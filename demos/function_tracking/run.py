#!/usr/bin/env python
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation, PillowWriter
import argparse
from pathlib import Path
import torch
import torch.nn as nn
import torch.optim as optim

#----------------Helpers---------------
def f_t(x, t):
    """Defines the relationship y = f(x, t)"""
    return np.sin(x) + 0.3 * x**2 + 0.2 * np.sin(0.01 * t)

def build_time_series(n, seed=0, low=-2.0, high=2.0):
    """Generates time, x, and y data."""
    rng = np.random.default_rng(seed)
    t = np.arange(n, dtype=float)
    x = rng.uniform(low, high, size=n)     # x_t ~ U[-2,2] each time step
    y = f_t(x, t)
    return t, x, y

# --- NEW 4-PLOT ANIMATION FUNCTION ---
def animate_four_plots(t_data, x_data, y_data, y_pred_data, loss_data, out_gif, 
                         interval_ms=20, figsize=(10, 10)):
    """
    Creates a 4-plot stacked animation:
    1. x vs t
    2. y vs t
    3. y_pred vs t (and y vs t)
    4. loss vs t
    """
    # Create 4 subplots, stacked vertically, sharing the x-axis
    fig, (ax1, ax2, ax3, ax4) = plt.subplots(4, 1, figsize=figsize, sharex=True)
    
    # --- Plot 1: x vs t ---
    line1, = ax1.plot([], [], lw=2, label="x(t)", color="C0")
    dot1,  = ax1.plot([], [], "o", ms=4, color="C0")
    xpad = 0.05 * (x_data.max() - x_data.min() + 1e-9)
    ax1.set_ylim(x_data.min() - xpad, x_data.max() + xpad)
    ax1.set_ylabel("x(t)")
    ax1.legend(loc="upper left")
    title_text = ax1.set_title("t = 0") # Title on the top plot

    # --- Plot 2: y vs t ---
    line2, = ax2.plot([], [], lw=2, label="y(t) (True)", color="C1")
    dot2,  = ax2.plot([], [], "o", ms=4, color="C1")
    ypad = 0.05 * (y_data.max() - y_data.min() + 1e-9)
    ax2.set_ylim(y_data.min() - ypad, y_data.max() + ypad)
    ax2.set_ylabel("y(t) True")
    ax2.legend(loc="upper left")

    # --- Plot 3: y_pred vs t (and y vs t) ---
    all_y_comp = np.concatenate([y_data, y_pred_data])
    y_comp_pad = 0.05 * (all_y_comp.max() - all_y_comp.min() + 1e-9)
    ax3.set_ylim(y_data.min() - ypad, y_data.max() + ypad)
    
    line3_true, = ax3.plot([], [], lw=2, label="y(t) (True)", color="C1", linestyle="--", alpha=0.7)
    dot3_true,  = ax3.plot([], [], "o", ms=4, color="C1", alpha=0.7)
    line3_pred, = ax3.plot([], [], lw=2, label="y(t) (Pred)", color="C2")
    dot3_pred,  = ax3.plot([], [], "o", ms=4, color="C2")
    ax3.set_ylabel("Prediction")
    ax3.legend(loc="upper left")

    # --- Plot 4: loss vs t ---
    line4, = ax4.plot([], [], lw=2, label="MSE Loss", color="C3")
    dot4,  = ax4.plot([], [], "o", ms=4, color="C3")
    lpad = 0.05 * (loss_data.max() - loss_data.min() + 1e-9)
    # Set bottom y-limit to 0 or just below min
    ax4.set_ylim(min(0, loss_data.min()) - lpad, loss_data.max() + lpad)
    ax4.set_ylabel("MSE Loss")
    ax4.legend(loc="upper left")

    # --- Common settings ---
    ax4.set_xlabel("time t") # Label only on the bottom plot
    ax1.set_xlim(t_data.min(), t_data.max()) # Set common x-limits
    
    plt.tight_layout() # Adjust layout

    def init():
        """Initialize the animation elements."""
        line1.set_data([], [])
        dot1.set_data([], [])
        line2.set_data([], [])
        dot2.set_data([], [])
        line3_true.set_data([], [])
        dot3_true.set_data([], [])
        line3_pred.set_data([], [])
        dot3_pred.set_data([], [])
        line4.set_data([], [])
        dot4.set_data([], [])
        title_text.set_text("t = 0")
        # Return all artists
        return (line1, dot1, line2, dot2, line3_true, dot3_true, 
                line3_pred, dot3_pred, line4, dot4, title_text)

    def update(frame):
        """Update function for each animation frame."""
        tt = t_data[:frame+1]
        xx = x_data[:frame+1]
        yy = y_data[:frame+1]
        yy_pred = y_pred_data[:frame+1]
        ll = loss_data[:frame+1]

        # Update plot 1 (x vs t)
        line1.set_data(tt, xx)
        dot1.set_data([tt[-1]], [xx[-1]])
        
        # Update plot 2 (y vs t)
        line2.set_data(tt, yy)
        dot2.set_data([tt[-1]], [yy[-1]])
        
        # Update plot 3 (y vs t and y_pred vs t)
        line3_true.set_data(tt, yy)
        dot3_true.set_data([tt[-1]], [yy[-1]])
        line3_pred.set_data(tt, yy_pred)
        dot3_pred.set_data([tt[-1]], [yy_pred[-1]])

        # Update plot 4 (loss vs t)
        line4.set_data(tt, ll)
        dot4.set_data([tt[-1]], [ll[-1]])
        
        # Update the title
        title_text.set_text(f"t = {int(t_data[frame])}")
        
        # Return all artists
        return (line1, dot1, line2, dot2, line3_true, dot3_true, 
                line3_pred, dot3_pred, line4, dot4, title_text)

    ani = FuncAnimation(fig, update, frames=len(t_data), init_func=init,
                        interval=interval_ms, blit=True)
    ani.save(out_gif, writer=PillowWriter(fps=max(1, int(1000/interval_ms))))
    plt.close(fig)
    return out_gif

#----------------NEW MODEL CLASS (Unchanged)---------------
class StreamingMLP(nn.Module):
    """
    A simple MLP for online learning, predicting y from (x, t).
    """
    def __init__(self, input_size=2, hidden_size=128, output_size=1, lr=0.01):
        super().__init__()
        self.network = nn.Sequential(
            nn.Linear(input_size, hidden_size),
            nn.ReLU(),
            nn.Linear(hidden_size, hidden_size),
            nn.ReLU(),
            nn.Linear(hidden_size, hidden_size),
            nn.ReLU(),
            nn.Linear(hidden_size, output_size)
        )
        self.optimizer = optim.SGD(self.parameters(), lr=lr)
        self.loss_fn = nn.MSELoss()

    def _to_tensor(self, val):
        """Converts a scalar or 1D array to a 2D tensor [1, N]."""
        return torch.tensor(val, dtype=torch.float32).reshape(1, -1)

    def predict(self, x, t):
        """Predicts y from a single (x, t) pair."""
        self.eval() # Set to evaluation mode
        with torch.no_grad():
            inputs = self._to_tensor([x, t])
            y_pred = self.network(inputs)
        return y_pred.item() # Return scalar

    def update(self, x, t, y_true):
        """Performs one online update step."""
        self.train() # Set to training mode
        
        inputs = self._to_tensor([x, t])
        target = self._to_tensor([y_true])
        
        # Standard training loop
        self.optimizer.zero_grad()
        y_pred = self.network(inputs)
        loss = self.loss_fn(y_pred, target)
        loss.backward()
        self.optimizer.step()
        
        return loss.item() # Return scalar loss

#----------------UPDATED MAIN---------------
def main():

    ap = argparse.ArgumentParser(description="Generate and model time series (t,x_t,y_t) with online learning.")
    ap.add_argument("--n", type=int, default=500, help="number of time steps / data points")
    ap.add_argument("--interval_ms", type=int, default=20, help="animation frame interval in ms")
    
    # --- MODIFIED ARGS ---
    ap.add_argument("--gif_all", type=Path, default=Path("plots/all_plots_stacked.gif"),
                    help="Output GIF file for all 4 stacked plots")
    
    args = ap.parse_args()

    # Ensure output directory exists
    args.gif_all.parent.mkdir(parents=True, exist_ok=True) 

    # Create dataset
    t_series, x_series, y_series = build_time_series(n=args.n)

    # --- Start of Pseudo-code Implementation (Unchanged) ---

    # 1. Initialize Model
    model = StreamingMLP()

    # 2. Stream data, predict, and update
    pred_stream = []
    loss_stream = []
    
    print(f"Starting online learning for {args.n} steps...")
    for i in range(len(t_series)):
        t, x, y = t_series[i], x_series[i], y_series[i]
        
        # Get prediction
        pred = model.predict(x, t)
        pred_stream.append(pred)

        # Measure feedback (MSE) and update the model
        loss = model.update(x, t, y)
        loss_stream.append(loss)
        
        if (i + 1) % 100 == 0:
            print(f"  Step {i+1}/{args.n}, Current Loss: {loss:.6f}")

    print("Online learning complete.")

    # Convert results to numpy arrays for plotting
    y_pred_series = np.array(pred_stream)
    mse_loss_series = np.array(loss_stream)

    # --- End of Pseudo-code Implementation ---

    # 3. Create a single animation with all 4 plots
    
    print(f"Generating stacked animation: {args.gif_all}")
    
    # --- REPLACED PLOTTING CALLS ---
    animate_four_plots(
        t_data=t_series,
        x_data=x_series,
        y_data=y_series,
        y_pred_data=y_pred_series,
        loss_data=mse_loss_series,
        out_gif=args.gif_all,
        interval_ms=args.interval_ms,
        figsize=(10, 10) # Make figure taller for 4 plots
    )
    
    print(f"Done. Animation saved to: {args.gif_all}")


if __name__ == "__main__":
    main()