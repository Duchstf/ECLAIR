import sys
import numpy as np

sys.path.append('../../src')
from eclair import Eclair
from common import build_time_series, save_static_four_plots

NUM_SAMPLES = 1000

# ------------------------------- DATASET --------------------------
t_series, x_series, y_series = build_time_series(NUM_SAMPLES)

#------------------------------- MODEL -----------------------------
config = {
    #Model architecture
    'layer_sizes': [1,1],
    'model_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    'input_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    'output_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    
    #Grid
    'grid_range': [-2, 2],
    'grid_size': 5,

    #Spline
    'spline_order': 3,
    
    #Others
    'lut_resolution': 256, #How many entries for storing bases values in LUTs
    'model_name': 'eclair_model',
    'learning_rate': 0.15,

    #Hardware specification
    'fpga_part': 'xcvu13p-flga2577-2-e',
    'clock_period': '5', #in nanoseconds

    #HLS Implementation
    'params_type': 'ram_2p',
    'params_impl': 'lutram',
    'context_type': 'ram_1p',
    'context_impl': 'lutram',

}

model = Eclair(config)
model.compile()

#------------------------------- FEEDBACK LOOP -----------------------------
y_pred_series = []
mse_loss_series = []

for i in range(len(t_series)):
    t, x, y = t_series[i], x_series[i], y_series[i]

    #Do the inference
    pred = model.call([x], 0, 1)
    y_pred_series.append(pred)

    #Compute the loss
    mse_loss = np.mean((y - pred)**2)
    mse_loss_series.append(mse_loss)

    #Calculate the feedback
    feedback = 2*(pred - y)

    #Update the model
    model.call([x], feedback, 0)

    if (i + 1) % 10 == 0:
        print(f"Step {i+1}/{NUM_SAMPLES}, Current MSE Loss: {mse_loss:.6f}")

y_pred_series = np.array(y_pred_series)
mse_loss_series = np.array(mse_loss_series)

save_static_four_plots(
    t_data=t_series,
    x_data=x_series,
    y_data=y_series,
    y_pred_data=y_pred_series,
    loss_data=mse_loss_series,
    out_file="plots/ECLAIR.png",
    figsize=(10, 10) # Make figure taller for 4 plots
)