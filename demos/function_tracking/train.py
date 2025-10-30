import sys
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_moons
from matplotlib.animation import FuncAnimation, PillowWriter
from matplotlib.colors import LinearSegmentedColormap, TwoSlopeNorm

sys.path.append('../../src')
from eclair import EclairKAN

#------------------------------- MODEL & DATA -----------------------------
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
