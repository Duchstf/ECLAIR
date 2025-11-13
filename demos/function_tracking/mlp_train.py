import sys
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_moons
from matplotlib.animation import FuncAnimation, PillowWriter
from matplotlib.colors import LinearSegmentedColormap, TwoSlopeNorm

sys.path.append('../../src')
from mlp import MLP

NUM_SAMPLES = 1000

#------------------------------- DATA GENERATION -----------------------------
def f1(x):
    """
    First regime: some smooth nonlinear function of x only.
    """
    return np.sin(x) + 0.3 * x**2

def f2(x):
    """
    Second regime: a completely different function of x only.
    """
    return -np.cos(2 * x) + 0.1 * x**3 + 1.0


def build_time_series(n, seed=0, low=-2.0, high=2.0, t_switch=None):
    """
    Generates time, x, and y data.
    y is piecewise in *time index* but depends only on x:

        if t < t_switch: y = f1(x)
        else:            y = f2(x)

    Returns t_orig, x, y, where t_orig is in [0, n-1].
    """
    rng = np.random.default_rng(seed)
    
    # 1. Generate original t in [0, n-1]
    t_orig = np.arange(n, dtype=float)

    # If no switch specified, default to middle of the series
    if t_switch is None:
        t_switch = n // 2

    # 2. Generate x in [low, high]
    x = rng.uniform(low, high, size=n)

    # 3. Compute y using x only, with a regime change at t_switch
    y1 = f1(x)
    y2 = f2(x)

    mask = t_orig < t_switch   # early vs late times
    y = np.where(mask, y1, y2)

    return t_orig, x, y


def save_static_four_plots(t_data, x_data, y_data, y_pred_data, loss_data, out_file, 
                         figsize=(10, 10)):
    """
    Saves a 4-plot stacked static image of the final state:
    1. x vs t
    2. y vs t
    3. y_pred vs t (and y vs t)
    4. loss vs t
    """
    # Create 4 subplots, stacked vertically, sharing the x-axis
    fig, (ax1, ax2, ax3, ax4) = plt.subplots(4, 1, figsize=figsize, sharex=True)
    
    # --- Plot 1: x vs t ---
    ax1.plot(t_data, x_data, lw=2, label="x(t)", color="C0")
    ax1.plot([t_data[-1]], [x_data[-1]], "o", ms=4, color="C0") # Final dot
    xpad = 0.05 * (x_data.max() - x_data.min() + 1e-9)
    ax1.set_ylim(x_data.min() - xpad, x_data.max() + xpad)
    ax1.set_ylabel("x(t)")
    ax1.legend(loc="upper left")
    title_text = ax1.set_title(f"Final State (t = {int(t_data[-1])})") # Title on the top plot

    # --- Plot 2: y vs t ---
    ax2.plot(t_data, y_data, lw=2, label="y(t) (True)", color="C1")
    ax2.plot([t_data[-1]], [y_data[-1]], "o", ms=4, color="C1") # Final dot
    ypad = 0.05 * (y_data.max() - y_data.min() + 1e-9)
    ax2.set_ylim(y_data.min() - ypad, y_data.max() + ypad)
    ax2.set_ylabel("y(t) True")
    ax2.legend(loc="upper left")

    # --- Plot 3: y_pred vs t (and y vs t) ---
    all_y_comp = np.concatenate([y_data, y_pred_data])
    y_comp_pad = 0.05 * (all_y_comp.max() - all_y_comp.min() + 1e-9)
    ax3.set_ylim(y_data.min() - ypad, y_data.max() + ypad)
    
    ax3.plot(t_data, y_data, lw=2, label="y(t) (True)", color="C1", linestyle="--", alpha=0.7)
    ax3.plot([t_data[-1]], [y_data[-1]], "o", ms=4, color="C1", alpha=0.7) # Final dot
    ax3.plot(t_data, y_pred_data, lw=2, label="y(t) (Pred)", color="C2")
    ax3.plot([t_data[-1]], [y_pred_data[-1]], "o", ms=4, color="C2") # Final dot
    ax3.set_ylabel("Prediction")
    ax3.legend(loc="upper left")

    # --- Plot 4: loss vs t ---
    ax4.plot(t_data, loss_data, lw=2, label="MSE Loss", color="C3")
    ax4.plot([t_data[-1]], [loss_data[-1]], "o", ms=4, color="C3") # Final dot
    lpad = 0.05 * (loss_data.max() - loss_data.min() + 1e-9)
    # Set bottom y-limit to 0 or just below min
    ax4.set_ylim(min(0, loss_data.min()) - lpad, loss_data.max() + lpad)
    ax4.set_ylabel("MSE Loss")
    ax4.legend(loc="upper left")

    # --- Common settings ---
    ax4.set_xlabel("time t") # Label only on the bottom plot
    ax1.set_xlim(t_data.min(), t_data.max()) # Set common x-limits
    
    plt.tight_layout() # Adjust layout

    # Save the figure
    plt.savefig(out_file)
    plt.close(fig)
    return out_file

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