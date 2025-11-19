import sys
import numpy as np

sys.path.append('../../src')
from mlp import MLP
from common import build_time_series, save_static_four_plots

NUM_SAMPLES = 1000

# ------------------------------- DATASET --------------------------
t_series, x_series, y_series = build_time_series(NUM_SAMPLES)

#------------------------------- MODEL -----------------------------
config = {
    #Model architecture
    'layer_sizes': [1, 128, 1],
    # 'model_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    # 'input_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',
    # 'output_precision': 'ap_fixed<16, 6, AP_RND_CONV, AP_SAT>',

    'model_precision': 'float',
    'input_precision': 'float',
    'output_precision': 'float',
    
    #Others
    'model_name': 'mlp_model',
    'learning_rate': 0.1,

    #Hardware specification
    'fpga_part': 'xcvu13p-flga2577-2-e',
    'clock_period': '5', #in nanoseconds

}

model = MLP(config)
model.compile()

#------------------------------- FEEDBACK LOOP -----------------------------
feedback_stream = [0] #Initial feedback is 0

y_pred_series = []
mse_loss_series = []

for i in range(len(t_series)):

    t, x, y = t_series[i], x_series[i], y_series[i]
    pred = model.update([x], feedback_stream[-1])
    y_pred_series.append(pred)

    mse_loss = np.mean((y - pred)**2)
    mse_loss_series.append(mse_loss)

    feedback = 2*(pred - y)
    feedback_stream.append(feedback)

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
    out_file="plots/MLP.png",
    figsize=(10, 10) # Make figure taller for 4 plots
)