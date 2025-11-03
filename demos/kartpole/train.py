import gymnasium as gym
import numpy as np

# ------------------------------- ENV --------------------------
env = gym.make("CartPole-v1")
obs_dim = env.observation_space.shape[0]  # 4
MAX_STEPS = 500