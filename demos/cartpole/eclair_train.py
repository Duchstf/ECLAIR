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

def softmax(x):
    """Numerically stable softmax"""
    e_x = np.exp(x - np.max(x))
    return e_x / e_x.sum()

# Add your source path
sys.path.append('../../src')
from eclair import Eclair

# ------------------------------- CONFIGURATION -----------------------------
ENV_NAME = "CartPole-v1"
NUM_BATCHES = 10000       # Total number of batches to train
STEPS_PER_BATCH = 512   # Number of steps to collect per batch
GAMMA = 0.99            # Discount factor
LEARNING_RATE = 0.001   # Learning rate for the model
CRITIC_LOSS_COEF = 0.5  # Weight for the critic's value loss

# CartPole-v1 is considered "solved" at an average reward of 475 over 100 episodes
SOLVED_SCORE = 475.0

# ------------------------------- MODEL SETUP -------------------------------
# A2C requires an Actor (policy) and a Critic (value)
# We use a single model with 3 outputs:
#   - Output 0: Actor logit for Action 0
#   - Output 1: Actor logit for Action 1
#   - Output 2: Critic value V(s)
config = {
    'layer_sizes': [4, 3],  # 4 inputs, 3 outputs (2 actor, 1 critic)

    # 'model_precision': 'float',
    # 'input_precision': 'float',
    # 'output_precision': 'float',

    'model_precision': 'ap_fixed<32, 10, AP_RND_CONV, AP_SAT>',
    'input_precision': 'ap_fixed<32, 10, AP_RND_CONV, AP_SAT>',
    'output_precision': 'ap_fixed<32, 10, AP_RND_CONV, AP_SAT>',

    'grid_range': [-1, 1],
    'grid_size': 5,
    'spline_order': 3,
    'lut_resolution': 256,
    'model_name': 'eclair_cartpole_a2c',
    'learning_rate': LEARNING_RATE,

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
scores = [] # Stores all completed episode scores

print(f"Starting A2C training on {ENV_NAME}...")

for e in range(NUM_BATCHES):
    # --- 1. Data Collection (Rollout) ---
    storage = [] # (state, action, reward, done, value)
    batch_episode_scores = []

    # Initialize environment for the batch
    state, _ = env.reset()
    state = normalize_state(state)
    current_episode_reward = 0

    for _ in range(STEPS_PER_BATCH):
        state_list = list(state)
        
        # Get actor logits and critic value from model (flag=1 for inference)
        outputs = model.call(state_list, [0, 0, 0], 1)
        actor_logits = np.array(outputs[0:2])
        value = outputs[2]
        
        # Get action probabilities from logits
        probs = softmax(actor_logits)
        
        # Sample action from the policy distribution
        action = np.random.choice([0, 1], p=probs)

        next_state, reward, done, truncated, _ = env.step(action)
        next_state = normalize_state(next_state)
        finished = done or truncated

        # Store the transition
        storage.append((state_list, action, reward, finished, value))
        
        state = next_state
        current_episode_reward += reward

        if finished:
            # Store completed episode score
            batch_episode_scores.append(current_episode_reward)
            # Reset environment
            state, _ = env.reset()
            state = normalize_state(state)
            current_episode_reward = 0

    # Add all completed episode scores from this batch to the main list
    scores.extend(batch_episode_scores)

    # --- 2. Compute Returns and Advantages ---
    
    # Get the value of the last state to bootstrap from
    outputs = model.call(list(state), [0, 0, 0], 1)
    last_value = outputs[2]

    returns = []
    advantages = []
    G = last_value  # G is the "bootstrapped" discounted return

    # Iterate backwards through the collected data
    for t in reversed(range(STEPS_PER_BATCH)):
        state_t, action_t, reward_t, done_t, value_t = storage[t]
        
        # G_t = r_t + gamma * V(s_{t+1})
        # If done, V(s_{t+1}) = 0
        G = reward_t + GAMMA * G * (1 - done_t)
        
        # Advantage A_t = G_t - V(s_t)
        adv = G - value_t
        
        returns.append(G)
        advantages.append(adv)

    # Reverse to align with storage
    returns.reverse()
    advantages.reverse()

    # Normalize advantages (helps stabilize training)
    advantages = np.array(advantages)
    adv_mean = np.mean(advantages)
    adv_std = np.std(advantages)
    advantages = (advantages - adv_mean) / (adv_std + 1e-8)

    # --- 3. Update Policy and Value Functions ---

    for t in range(STEPS_PER_BATCH):
        state_t, action_t, _, _, _ = storage[t]
        G_t = returns[t]    # Target for the critic
        A_t = advantages[t] # Target for the actor

        # Rerun forward pass to get current logits/value for this state
        # This is necessary as the model updates during this loop
        outputs = model.call(state_t, [0, 0, 0], 1)
        actor_logits = np.array(outputs[0:2])
        value = outputs[2]
        probs = softmax(actor_logits)

        # --- Calculate Gradients Manually ---
        
        # a) Critic Loss Gradient
        # Loss = CRITIC_LOSS_COEF * (Value - G_t)^2
        # Gradient (w.r.t value) = CRITIC_LOSS_COEF * 2.0 * (Value - G_t)
        grad_critic = CRITIC_LOSS_COEF * 2.0 * (value - G_t)

        # b) Actor Loss Gradient
        # Loss = -log(prob[action]) * A_t
        # Gradient (w.r.t logits) = A_t * (probs - y)
        # where y is a one-hot vector [1, 0] if action=0, or [0, 1] if action=1
        y = np.array([1.0 if i == action_t else 0.0 for i in range(2)])
        grad_actor = A_t * (probs - y)
        
        # Combine gradients into the feedback vector
        # [grad_logit_0, grad_logit_1, grad_value]
        feedback_vector = [grad_actor[0], grad_actor[1], grad_critic]

        # Apply the update (flag=0)
        model.call(state_t, feedback_vector, 0)

    # --- Logging ---
    if (e + 1) % 20 == 0:
        avg_score_100 = np.mean(scores[-100:]) if len(scores) > 0 else 0.0
        avg_batch_score = np.mean(batch_episode_scores) if len(batch_episode_scores) > 0 else 0.0
        
        print(
            f"Batch {e+1}/{NUM_BATCHES} | "
            f"Avg Batch Reward: {avg_batch_score:.1f} | "
            f"Avg (last 100 eps): {avg_score_100:.1f}"
        )

print("Training finished.")
env.close()

# ------------------------------- PLOTTING -----------------------------------
os.makedirs("plots", exist_ok=True)

# The 'scores' list now contains rewards from all *completed* episodes
episodes = np.arange(1, len(scores) + 1)

# 100-episode moving average
window = 100
if len(scores) > window:
    moving_avg = np.convolve(scores, np.ones(window)/window, mode='valid')
else:
    moving_avg = [] # Not enough data for moving avg

fig, ax = plt.subplots(figsize=(6, 4), dpi=300)

# Raw per-episode reward
ax.plot(episodes, scores, linewidth=0.6, alpha=0.5, label="Episode reward")

# Moving average
if len(moving_avg) > 0:
    ax.plot(episodes[window-1:], moving_avg, linewidth=1.2, label="100-episode average")

# Solved threshold
ax.axhline(SOLVED_SCORE, c='red', linestyle="--", linewidth=1.0, label=f"Solved ({int(SOLVED_SCORE)})")

ax.set_xlabel("Episode")
ax.set_ylabel("Reward")
ax.set_title("CartPole-v1 A2C Training Performance")
ax.grid(True, linewidth=0.3, alpha=0.7)
ax.legend(frameon=False)
fig.tight_layout()

fig.savefig("plots/reward_vs_episode_a2c.pdf", bbox_inches="tight")
fig.savefig("plots/reward_vs_episode_a2c.png", bbox_inches="tight")

plt.close(fig)

print("Plot saved to plots/reward_vs_episode_a2c.png")