import numpy as np
import matplotlib.pyplot as plt

#------------------------------- DATA GENERATION -----------------------------
def f1(x):
    return np.sin(x) + 0.3 * x**2

def f2(x):
    return -np.cos(2 * x) + 0.1 * x**3 + 1.0

def f3(x):
    return np.exp(-0.5 * (x - 1)**2) + 0.05 * x**3

def build_time_series(n, seed=0, low=-2.0, high=2.0):
    """
    Generates time, x, and y data.
    y is piecewise in *time index* and switches between f1, f2, and f3
    at points n/3 and 2n/3.

    Regime 1 (t < n/3):       y = f1(x)
    Regime 2 (n/3 <= t < 2n/3): y = f2(x)
    Regime 3 (t >= 2n/3):     y = f3(x)

    Args:
        n (int): The total number of data points.
        seed (int): Random seed for reproducibility.
        low (float): Lower bound for random x values.
        high (float): Upper bound for random x values.

    Returns:
        tuple: (t_orig, x, y), where t_orig is in [0, n-1].
    """
    rng = np.random.default_rng(seed)

    # Generate original t in [0, n-1]
    t_orig = np.arange(n, dtype=float)

    # Calculate the split indices for the three regimes (n/3 and 2n/3)
    n1 = n // 3
    n2 = 2 * n // 3

    # Generate x in [low, high]
    x = rng.uniform(low, high, size=n)

    # Compute y based on the three regimes
    # Initialize y with zeros
    y = np.zeros(n)

    # Regime 1: t < n1 (uses f1)
    mask1 = t_orig < n1
    y[mask1] = f1(x[mask1])

    # Regime 2: n1 <= t < n2 (uses f2)
    mask2 = (t_orig >= n1) & (t_orig < n2)
    y[mask2] = f2(x[mask2])

    # Regime 3: t >= n2 (uses f3)
    mask3 = t_orig >= n2
    y[mask3] = f3(x[mask3])

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
