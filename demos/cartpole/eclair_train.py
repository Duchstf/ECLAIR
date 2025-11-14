import sys
import numpy as np
import gymnasium as gym
import random

# Rough “typical max” values (tuned for stability, not physics-precision)
STATE_SCALE = np.array([
    1.5,   # x (cart position)
    3.0,   # x_dot (cart velocity)
    0.21,  # theta (pole angle, radians)
    3.12    # theta_dot (pole angular velocity)
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
MAX_STEPS = 500  # CartPole v1 max steps is usually 500, keeping it 200 for speed
GAMMA = 0.99     # Discount factor
EPSILON = 0.9  # Exploration rate
EPSILON_MIN = 0
EPSILON_DECAY = 0.995

# ------------------------------- MODEL SETUP -------------------------------
config = {
    # ARCHITECTURE CHANGE: 
    # CartPole has 4 inputs (state) and 2 outputs (Action Left, Action Right)
    'layer_sizes': [4, 2], 
    
    # 'model_precision': 'ap_fixed<16, 8, AP_RND_CONV, AP_SAT>',
    # 'input_precision': 'ap_fixed<16, 8, AP_RND_CONV, AP_SAT>',
    # 'output_precision': 'ap_fixed<16, 8, AP_RND_CONV, AP_SAT>',

    'model_precision': 'float',
    'input_precision': 'float',
    'output_precision': 'float',

    # Grid covers the active range of CartPole 
    # (x limit is 2.4, theta limit is ~0.2, but velocities can be higher)
    'grid_range': [-1, 1], 
    'grid_size': 30,
    'spline_order': 3,
    'lut_resolution': 256,
    'model_name': 'eclair_cartpole',
    'learning_rate': 0.02, # Slightly lower LR often helps RL stability
    
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
    # Ensure state is a list/array of float
    state = list(state) 
    
    total_reward = 0
    done = False
    
    while not done:
        q_values = model.call(state, [0,0], 1) 
        
        if np.random.rand() <= EPSILON: action = env.action_space.sample()
        else: action = np.argmax(q_values)
            
        next_state, reward, done, truncated, _ = env.step(action)
        next_state = normalize_state(next_state)
        next_state = list(next_state)
        
        finished = done or truncated

        if finished: target = reward
        else:
            next_q_values = model.call(next_state, [0,0], 1)
            target = reward + GAMMA * np.max(next_q_values)
        
        current_q = q_values[action]
        error = 2.0 * (current_q - target)
        
        # We only want to update the Q-value for the action we actually took.
        # The gradient for the untaken action is 0.
        feedback_vector = [0.0, 0.0]
        feedback_vector[action] = error
        
        # 6. UPDATE MODEL
        # update_flag=0 performs the weight update
        _ = model.call(state, [0,0], 1) 
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
        avg_score = np.mean(scores[-20:])
        print(f"Episode {e+1}/{NUM_EPISODES} | Score: {total_reward:.1f} | Avg (last 20): {avg_score:.1f} | Epsilon: {EPSILON:.2f}")

print("Training finished.")
env.close()

# Optional: Plotting the learning curve
# import matplotlib.pyplot as plt
# plt.plot(scores)
# plt.xlabel('Episode')
# plt.ylabel('Total Reward')
# plt.title('Eclair Performance on CartPole-v1')
# plt.show()