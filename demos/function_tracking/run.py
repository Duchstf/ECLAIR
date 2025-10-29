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


def animate_plot(x_data, y_data, t_data, xlabel, ylabel, title, out_gif, 
                 interval_ms=20, figsize=(20, 4)):
    """
    Creates an animated plot of y_data vs. x_data, with a title
    updated based on t_data. (This function is unchanged)
    """
    fig, ax = plt.subplots(figsize=figsize)
    line, = ax.plot([], [], lw=2)
    dot,  = ax.plot([], [], "o", ms=4, color="red")

    # Set plot limits with a 5% padding
    xpad = 0.05 * (x_data.max() - x_data.min() + 1e-9)
    ax.set_xlim(x_data.min() - xpad, x_data.max() + xpad)
    ypad = 0.05 * (y_data.max() - y_data.min() + 1e-9)
    ax.set_ylim(y_data.min() - ypad, y_data.max() + ypad)
    
    ax.set_xlabel(xlabel)
    ax.set_ylabel(ylabel)
    title_text = ax.set_title(title)

    def init():
        """Initialize the animation elements."""
        line.set_data([], [])
        dot.set_data([], [])
        title_text.set_text(f"{title} | t = 0")
        return line, dot, title_text

    def update(frame):
        """Update function for each animation frame."""
        xx = x_data[:frame+1]
        yy = y_data[:frame+1]
        line.set_data(xx, yy)
        dot.set_data([xx[-1]], [yy[-1]])
        title_text.set_text(f"{title} | t = {int(t_data[frame])}")
        return line, dot, title_text

    ani = FuncAnimation(fig, update, frames=len(t_data), init_func=init,
                        interval=interval_ms, blit=True)
    ani.save(out_gif, writer=PillowWriter(fps=max(1, int(1000/interval_ms))))
    plt.close(fig)
    return out_gif

# --- NEW FUNCTION ---
def animate_stacked_plot(t_data, x_data, y_data, out_gif, 
                         interval_ms=20, figsize=(20, 8)):
    """
    Creates a stacked animated plot of x(t) and y(t) vs. t.
    """
    # Create 2 subplots, stacked vertically, sharing the x-axis
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=figsize, sharex=True)
    
    # --- Plot 1: x vs t ---
    line1, = ax1.plot([], [], lw=2, label="x(t)", color="C0")
    dot1,  = ax1.plot([], [], "o", ms=4, color="red")
    xpad = 0.05 * (x_data.max() - x_data.min() + 1e-9)
    ax1.set_ylim(x_data.min() - xpad, x_data.max() + xpad)
    ax1.set_ylabel("x(t)")
    ax1.legend(loc="upper left")
    title_text = ax1.set_title(f"t = 0") # Title on the top plot

    # --- Plot 2: y vs t ---
    line2, = ax2.plot([], [], lw=2, label="y(t)", color="C1")
    dot2,  = ax2.plot([], [], "o", ms=4, color="orange")
    ypad = 0.05 * (y_data.max() - y_data.min() + 1e-9)
    ax2.set_ylim(y_data.min() - ypad, y_data.max() + ypad)
    ax2.set_ylabel("y(t)")
    ax2.legend(loc="upper left")

    # --- Common settings ---
    ax2.set_xlabel("time t")
    ax1.set_xlim(t_data.min(), t_data.max()) # Set common x-limits
    
    plt.tight_layout() # Adjust layout

    def init():
        """Initialize the animation elements."""
        line1.set_data([], [])
        dot1.set_data([], [])
        line2.set_data([], [])
        dot2.set_data([], [])
        title_text.set_text(f"t = 0")
        return line1, dot1, line2, dot2, title_text

    def update(frame):
        """Update function for each animation frame."""
        tt = t_data[:frame+1]
        
        # Update plot 1 (x vs t)
        xx = x_data[:frame+1]
        line1.set_data(tt, xx)
        dot1.set_data([tt[-1]], [xx[-1]])
        
        # Update plot 2 (y vs t)
        yy = y_data[:frame+1]
        line2.set_data(tt, yy)
        dot2.set_data([tt[-1]], [yy[-1]])
        
        # Update the title
        title_text.set_text(f"t = {int(t_data[frame])}")
        return line1, dot1, line2, dot2, title_text

    ani = FuncAnimation(fig, update, frames=len(t_data), init_func=init,
                        interval=interval_ms, blit=True)
    ani.save(out_gif, writer=PillowWriter(fps=max(1, int(1000/interval_ms))))
    plt.close(fig)
    return out_gif

#----------------NEW MODEL CLASS---------------
class StreamingMLP(nn.Module):
    """
    A simple MLP for online learning, predicting y from (x, t).
    """
    def __init__(self, input_size=2, hidden_size=64, output_size=1, lr=0.001):
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
        self.optimizer = optim.Adam(self.parameters(), lr=lr)
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
    # Removed old args, added new ones for prediction and loss plots
    ap.add_argument("--gif_pred", type=Path, default=Path("plots/predictions_vs_time.gif"))
    ap.add_argument("--gif_loss", type=Path, default=Path("plots/loss_vs_time.gif"))
    
    args = ap.parse_args()

    # Ensure output directories exist
    args.gif_pred.parent.mkdir(parents=True, exist_ok=True)
    args.gif_loss.parent.mkdir(parents=True, exist_ok=True) 

    # Create dataset
    t_series, x_series, y_series = build_time_series(n=args.n)

    # --- Start of Pseudo-code Implementation ---

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

    # 3. Create animation for predictions and loss
    # We re-use the existing `animate_plot` function for simplicity.
    
    print(f"Generating prediction animation: {args.gif_pred}")
    # This plot animates Predicted Y vs. Time
    animate_plot(
        x_data=t_series, 
        y_data=y_pred_series, 
        t_data=t_series, 
        xlabel="Time t", 
        ylabel="Predicted y_pred(t)", 
        title="Online Model Prediction",
        out_gif=args.gif_pred,
        interval_ms=args.interval_ms
    )

    print(f"Generating loss animation: {args.gif_loss}")
    # This plot animates MSE Loss vs. Time
    animate_plot(
        x_data=t_series,
        y_data=mse_loss_series,
        t_data=t_series,
        xlabel="Time t",
        ylabel="MSE Loss",
        title="Online Learning Loss",
        out_gif=args.gif_loss,
        interval_ms=args.interval_ms
    )
    
    print(f"Done. Animations saved to:\n- {args.gif_pred}\n- {args.gif_loss}")


if __name__ == "__main__":
    main()