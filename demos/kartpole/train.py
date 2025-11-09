import gymnasium as gym
import numpy as np
import sys

sys.path.append('../../src')
from eclair import Eclair

# ------------------------------- ENV --------------------------
env = gym.make("CartPole-v1")
obs_dim = env.observation_space.shape[0]  # 4

NUM_EPISODES = 1000
MAX_STEPS_PER_EPISODE = 500

SOLVED_WINDOW = 500
SOLVED_THRESHOLD = 475.0

# ------------------------------- HELPERS -----------------------------
obs_scale = np.array([4.8, 3.0, 0.418, 3.0], dtype=np.float32)

def normalize_obs(obs):
    return np.clip(obs / obs_scale, -1.0, 1.0)

def sigmoid(x):
    return 1.0 / (1.0 + np.exp(-x))

#------------------------------- MODEL -----------------------------
config = {
    #Model architecture
    'layer_sizes': [obs_dim, 1],
    # 'model_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    # 'input_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    # 'output_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    'model_precision': 'float',
    'input_precision': 'float',
    'output_precision': 'float',
    
    #Grid
    'grid_range': [-1, 1],
    'grid_size': 5,

    #Spline
    'spline_order': 3,
    
    #Others
    'lut_resolution': 256, #How many entries for storing bases values in LUTs
    'model_name': 'eclair_model',
    'learning_rate': 0.1,

    #Hardware specification
    'fpga_part': 'xcvu13p-flga2577-2-e',
    'clock_period': '5' #in nanoseconds

}

model = Eclair(config)
model.compile()

#------------------------------- TRAINING -----------------------------
