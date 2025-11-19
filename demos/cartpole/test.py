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
# Original config was 10000 batches * 512 steps
TOTAL_STEPS = 10000 * 512
# Log at the same frequency as the original (every 20 batches)
LOG_INTERVAL_STEPS = 20 * 512
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

print(f"Starting online A2C training on {ENV_NAME} for {TOTAL_STEPS} steps...")

# Initialize environment
state, _ = env.reset()
state = normalize_state(state)
current_episode_reward = 0

for step in range(TOTAL_STEPS):
    state_list = list(state)
    
    # --- 1. Get Action and Value V(s_t) ---
    # Get actor logits and critic value from model (flag=1 for inference)
    outputs = model.call(state_list, [0, 0, 0], 1)
    actor_logits = np.array(outputs[0:2])
    value = outputs[2] # This is V(s_t)
    
    # Get action probabilities from logits
    probs = softmax(actor_logits)
    
    # Sample action from the policy distribution
    action = np.random.choice([0, 1], p=probs)

    # --- 2. Take Step in Environment ---
    next_state, reward, done, truncated, _ = env.step(action)
    next_state_norm = normalize_state(next_state)
    finished = done or truncated
    current_episode_reward += reward

    # --- 3. Compute 1-Step Targets ---
    
    # Get V(s_{t+1}) for bootstrapping
    if finished:
        next_value = 0.0 # V(s_terminal) = 0
    else:
        # Get V(s_{t+1})
        outputs_next = model.call(list(next_state_norm), [0, 0, 0], 1)
        next_value = outputs_next[2] # This is V(s_{t+1})
    
    # 1-step return (TD target for Critic)
    # G_t = r_t + gamma * V(s_{t+1})
    G_t = reward + GAMMA * next_value
    
    # 1-step advantage (TD error for Actor)
    # A_t = G_t - V(s_t) = (r_t + gamma * V(s_{t+1})) - V(s_t)
    A_t = G_t - value

    # --- 4. Calculate Gradients and Update ---
    
    # a) Critic Loss Gradient
    # Loss = CRITIC_LOSS_COEF * (Value - G_t)^2
    # Gradient (w.r.t value) = CRITIC_LOSS_COEF * 2.0 * (Value - G_t)
    grad_critic = CRITIC_LOSS_COEF * 2.0 * (value - G_t)

    # b) Actor Loss Gradient
    # Loss = -log(prob[action]) * A_t
    # Gradient (w.r.t logits) = A_t * (probs - y)
    y = np.array([1.0 if i == action else 0.0 for i in range(2)])
    grad_actor = A_t * (probs - y)
    
    # Combine gradients into the feedback vector
    # [grad_logit_0, grad_logit_1, grad_value]
    feedback_vector = [grad_actor[0], grad_actor[1], grad_critic]

    # Apply the update (flag=0)
    model.call(state_list,  [0, 0, 0], 1)
    model.call(state_list, feedback_vector, 0)

    # --- 5. Handle Episode End and State Transition ---
    if finished:
        # Store completed episode score
        scores.append(current_episode_reward)
        # Reset environment
        state, _ = env.reset()
        state = normalize_state(state)
        current_episode_reward = 0
    else:
        # Move to next state
        state = next_state_norm

    # --- 6. Logging ---
    if (step + 1) % LOG_INTERVAL_STEPS == 0:
        avg_score_100 = np.mean(scores[-100:]) if len(scores) > 0 else 0.0
        
        print(
            f"Step {step+1}/{TOTAL_STEPS} | "
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
ax.set_title("CartPole-v1 A2C Training Performance (Online)")
ax.grid(True, linewidth=0.3, alpha=0.7)
ax.legend(frameon=False)
fig.tight_layout()

fig.savefig("plots/reward_vs_episode_a2c_online.pdf", bbox_inches="tight")
fig.savefig("plots/reward_vs_episode_a2c_online.png", bbox_inches="tight")

plt.close(fig)

print("Plot saved to plots/reward_vs_episode_a2c_online.png")