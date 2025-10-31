import sys
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_moons
from matplotlib.animation import FuncAnimation, PillowWriter
from matplotlib.colors import LinearSegmentedColormap, TwoSlopeNorm

sys.path.append('../../src')
from eclair import EclairKAN

NUM_SAMPLES = 100

#------------------------------- DATA GENERATION -----------------------------
def f_t(x, t):
    """Defines the relationship y = f(x, t)"""
    return np.sin(x) + 0.3 * x**2 + 0.2 * np.sin(0.01 * t) 

def build_time_series(n, seed=0, low=-2.0, high=2.0):
    """
    Generates time, x, and y data.
    Returns t_scaled, x, and y, where t_scaled is in the [low, high] range.
    """
    rng = np.random.default_rng(seed)
    
    # 1. Generate original t in [0, n-1]
    t_orig = np.arange(n, dtype=float) 
    
    # 2. Generate x in [low, high]
    x = rng.uniform(low, high, size=n)
    
    # 3. Generate y using the *original* t values
    y = f_t(x, t_orig)
    
    # 4. Scale t to be in the [low, high] range (same as x)
    t_min = 0.0
    t_max = float(n - 1)
    
    # Handle n=1 case to avoid division by zero
    if n == 1:
        t_scaled = np.array([low + (high - low) / 2.0]) # Place it in the middle
    else:
        # Standard Min-Max scaling from [t_min, t_max] to [low, high]
        t_scaled = low + (high - low) * (t_orig - t_min) / (t_max - t_min)
    
    return t_scaled, x, y

# ------------------------------- DATASET --------------------------
t_series, x_series, y_series = build_time_series(NUM_SAMPLES)

#------------------------------- MODEL -----------------------------
config = {
    #Model architecture
    'layer_sizes': [2, 1],
    'model_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    'input_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    'output_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    
    #Grid
    'grid_range': [-1,1],
    'grid_size': 5,

    #Spline
    'spline_order': 3,
    
    #Others
    'lut_resolution': 256, #How many entries for storing bases values in LUTs
    'model_name': 'eclair_model',
    'learning_rate': 0.01

}

model = EclairKAN(config)
model.compile()

#------------------------------- FEEDBACK LOOP -----------------------------
feedback_stream = [0] #Initial feedback is 0
pred_stream = []

for i in range(len(t_series)):

    t, x, y = t_series[i], x_series[i], y_series[i]

    pred = model.update([x, t], feedback_stream[-1])
    pred_stream.append(pred)

    feedback = y - pred
    feedback_stream.append(feedback)

    if (i + 1) % 10 == 0:
        print(f"Step {i+1}/{NUM_SAMPLES}, Current Feedback: {feedback:.6f}")
