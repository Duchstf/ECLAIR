import gymnasium as gym
import numpy as np
import sys

sys.path.append('../../src')
from eclair import Eclair

env = gym.make("CartPole-v1")
obs_dim = env.observation_space.shape[0]

# ------------------------------- MODEL -----------------------------
config = {
    'layer_sizes': [obs_dim, 1],
    'model_precision': 'float',
    'input_precision': 'float',
    'output_precision': 'float',
    'grid_range': [-1, 1],
    'grid_size': 5,
    'spline_order': 3,
    'lut_resolution': 256,
    'model_name': 'eclair_cartpole_policy',
    'learning_rate': 0.01,
    'fpga_part': 'xcvu13p-flga2577-2-e',
    'clock_period': '5'
}

model = Eclair(config)
model.compile()

# ------------------------------- HELPERS -----------------------------
obs_scale = np.array([4.8, 3.0, 0.418, 3.0], dtype=np.float32)

def normalize_obs(obs):
    return np.clip(obs / obs_scale, -1.0, 1.0)

def sigmoid(x):
    return 1.0 / (1.0 + np.exp(-x))

# ------------------------------- TRAINING -----------------------------
NUM_EPISODES = 1000
GAMMA = 0.99

episode_rewards = []

for ep in range(NUM_EPISODES):

    # --------- 1) Rollout (no learning, feedback = 0) ---------
    states = []
    actions = []
    probs   = []
    rewards = []

    obs, _ = env.reset()
    done = False
    truncated = False

    feedback = 0.0  # no learning during data collection

    while not (done or truncated):
        s = normalize_obs(obs)

        # Forward pass: we ignore feedback (0.0) to avoid updates
        z = model.update(s, feedback)   # scalar logit
        p = float(sigmoid(z))

        # Sample action from Bernoulli(p)
        a = 1 if np.random.rand() < p else 0

        next_obs, r, done, truncated, _ = env.step(a)

        # store trajectory
        states.append(s)
        actions.append(a)
        probs.append(p)
        rewards.append(r)

        obs = next_obs

    ep_return = sum(rewards)
    episode_rewards.append(ep_return)

    # --------- 2) Compute discounted returns G_t ---------
    T = len(rewards)
    returns = np.zeros(T, dtype=np.float32)
    G = 0.0
    for t in reversed(range(T)):
        G = rewards[t] + GAMMA * G
        returns[t] = G

    # Normalize returns (optional but helps stability)
    returns = (returns - returns.mean()) / (returns.std() + 1e-8)

    # --------- 3) Compute gradients dL/dz = G_t * (p_t - a_t) ---------
    grads = []
    for t in range(T):
        p_t = probs[t]
        a_t = actions[t]
        G_t = returns[t]
        dL_dz = G_t * (p_t - a_t)
        grads.append(float(dL_dz))

    # --------- 4) Replay episode for learning with SGD ---------
    feedback = 0.0  # gradient for "previous" prediction; none for the very first one
    for s, g in zip(states, grads):
        _ = model.update(s, feedback)
        feedback = g

    # Flush the last gradient once more so it is actually applied
    _ = model.update(np.zeros_like(states[0]), feedback)

    # --------- Logging ---------
    if (ep + 1) % 10 == 0:
        avg_return = np.mean(episode_rewards[-10:])
        print(f"Episode {ep+1}/{NUM_EPISODES}, "
              f"Return: {ep_return:.1f}, "
              f"Avg(last 10): {avg_return:.1f}")
