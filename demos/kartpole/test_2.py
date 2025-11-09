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
    'model_name': 'eclair_cartpole_online',
    'learning_rate': 0.01,  # smaller is usually better here
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

# ------------------------------- TRAINING (update every reward) ------
NUM_EPISODES = 1000
episode_rewards = []

for ep in range(NUM_EPISODES):
    obs, _ = env.reset()
    done = False
    truncated = False

    last_feedback = 0.0   # no gradient yet for first call
    ep_return = 0.0

    while not (done or truncated):
        s = normalize_obs(obs)

        # This call:
        #  - applies last_feedback to the previous prediction
        #  - returns current logit z_t
        z = model.update(s, last_feedback)
        p = float(sigmoid(z))

        # Sample action from Bernoulli(p)
        a = 1 if np.random.rand() < p else 0

        # Step environment
        next_obs, r, done, truncated, _ = env.step(a)
        ep_return += r

        # ---- define per-step loss and its derivative ----
        # L_t = -r_t * log pi(a_t | s_t)
        # dL/dz = r_t * (p_t - a_t)
        dL_dz = r * (p - a)      # this is your feedback_t

        # Store feedback to be applied on NEXT model.update(...)
        last_feedback = dL_dz

        obs = next_obs

    # Optionally: flush last gradient once more (dummy input)
    _ = model.update(np.zeros(obs_dim, dtype=np.float32), last_feedback)

    episode_rewards.append(ep_return)
    if (ep + 1) % 10 == 0:
        print(f"Episode {ep+1}, return: {ep_return:.1f}, "
              f"avg(last 10): {np.mean(episode_rewards[-10:]):.1f}")
