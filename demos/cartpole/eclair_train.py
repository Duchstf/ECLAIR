import sys
import os
import numpy as np
import gymnasium as gym
import random
import matplotlib.pyplot as plt

# Rough “typical max” values (tuned for stability, not physics-precision)
STATE_SCALE = np.array([
    1.5,   # x (cart position)
    3.0,   # x_dot (cart velocity)
    0.21,  # theta (pole angle, radians)
    3.12   # theta_dot (pole angular velocity)
], dtype=np.float32)

def normalize_state(state):
    s = np.array(state, dtype=np.float32) / STATE_SCALE
    # Optional: clip to [-1, 1] to avoid rare huge values
    return np.clip(s, -1.0, 1.0)

# Add your source path
sys.path.append('../../src')
from eclair import Eclair

# ------------------------------- CONFIGURATION -----------------------------
ENV_NAME = "CartPole-v1"
NUM_EPISODES = 10000
MAX_STEPS = 500  # CartPole v1 max steps is usually 500
GAMMA = 0.99     # Discount factor
EPSILON = 0.9    # Exploration rate
EPSILON_MIN = 0
EPSILON_DECAY = 0.995

# CartPole-v1 is considered "solved" at an average reward of 475 over 100 episodes
SOLVED_SCORE = 475.0

# ------------------------------- MODEL SETUP -------------------------------
config = {
    # CartPole has 4 inputs (state) and 2 outputs (Action Left, Action Right)
    'layer_sizes': [4, 2],

    'model_precision': 'float',
    'input_precision': 'float',
    'output_precision': 'float',

    # Grid covers the active range of CartPole
    'grid_range': [-1, 1],
    'grid_size': 30,
    'spline_order': 3,
    'lut_resolution': 256,
    'model_name': 'eclair_cartpole',
    'learning_rate': 0.02,  # Slightly lower LR often helps RL stability

    'fpga_part': 'xcvu13p-flga2577-2-e',
    'clock_period': '5',
    'params_type': 'ram_2p',
    'params_impl': 'lutram',
    'context_type': 'ram_1p',
    'context_impl': 'lutram',
}

model = Eclair(config)
model.compile()

# ------------------------------- TRAINING LOOP -----------------------------
env = gym.make(ENV_NAME)
scores = []

print(f"Starting training on {ENV_NAME}...")

for e in range(NUM_EPISODES):
    state, _ = env.reset()
    state = normalize_state(state)
    state = list(state)  # Ensure state is a list/array of float

    total_reward = 0
    done = False

    while not done:
        q_values = model.call(state, [0, 0], 1)

        if np.random.rand() <= EPSILON:
            action = env.action_space.sample()
        else:
            action = np.argmax(q_values)

        next_state, reward, done, truncated, _ = env.step(action)
        next_state = normalize_state(next_state)
        next_state = list(next_state)

        finished = done or truncated

        if finished:
            target = reward
        else:
            next_q_values = model.call(next_state, [0, 0], 1)
            target = reward + GAMMA * np.max(next_q_values)

        current_q = q_values[action]
        error = 2.0 * (current_q - target)

        # Only update the Q-value for the action we actually took.
        feedback_vector = [0.0, 0.0]
        feedback_vector[action] = error

        # update_flag=0 performs the weight update
        _ = model.call(state, [0, 0], 1)
        model.call(state, feedback_vector, 0)

        state = next_state
        total_reward += reward

        if finished:
            break

    # Decay Epsilon
    if EPSILON > EPSILON_MIN:
        EPSILON *= EPSILON_DECAY

    scores.append(total_reward)

    if (e + 1) % 20 == 0:
        avg_score = np.mean(scores[-100:])
        print(
            f"Episode {e+1}/{NUM_EPISODES} | "
            f"Reward: {total_reward:.1f} | "
            f"Avg (last 100): {avg_score:.1f} | "
            f"Epsilon: {EPSILON:.2f}"
        )

print("Training finished.")
env.close()

# ------------------------------- PLOTTING -----------------------------------
os.makedirs("plots", exist_ok=True)

episodes = np.arange(1, len(scores) + 1)

# 100-episode moving average
window = 100
moving_avg = np.convolve(scores, np.ones(window)/window, mode='valid')

fig, ax = plt.subplots(figsize=(6, 4), dpi=300)

# Raw per-episode reward
ax.plot(episodes, scores, linewidth=0.6, alpha=0.5, label="Episode reward")

# Moving average
ax.plot(episodes[window-1:], moving_avg, linewidth=1.2, label="100-episode average")

# Solved threshold
ax.axhline(475, linestyle="--", linewidth=1.0, label="Solved (475)")

ax.set_xlabel("Episode")
ax.set_ylabel("Reward")
ax.set_title("CartPole-v1 Training Performance")
ax.grid(True, linewidth=0.3, alpha=0.7)
ax.legend(frameon=False)
fig.tight_layout()

fig.savefig("plots/reward_vs_episode.pdf", bbox_inches="tight")
fig.savefig("plots/reward_vs_episode.png", bbox_inches="tight")

plt.close(fig)
