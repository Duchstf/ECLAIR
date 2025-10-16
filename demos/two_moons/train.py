import sys
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_moons
from matplotlib.animation import FuncAnimation, PillowWriter
from matplotlib.colors import LinearSegmentedColormap, TwoSlopeNorm


sys.path.append('../../src')
from eclair import Eclair

#------------------------------- MODEL & DATA -----------------------------
config = {
    'layer_sizes': [2, 2, 1],
    'layer_bitwidths': [8, 8, 8],
    'learning_rate': 16,
    'input_range': [-2.5, 2.5],
    'loss': 'HingeLoss'
}

model = Eclair(config)

# Generate the two moons dataset 
X, y = make_moons(n_samples=2000, noise=0.2, random_state=42)
y = 2 * y - 1 # Convert 0→-1 and 1→1
X_min, X_max = config['input_range']

#------------------------------- FIGURE ----------------------------------
#Create a figure to plot the data points and the model's decision boundary
fig, ax = plt.subplots(figsize=(8, 6))
ax.set_title("Two Moons: Streaming Eclair Decision Boundary")
ax.set_xlabel(r"Feature $x_1$")
ax.set_ylabel(r"Feature $x_2$")
ax.set_xlim(X_min, X_max)
ax.set_ylim(X_min, X_max)
ax.grid(True, which='both', linestyle='--', linewidth=0.5)

# Colors
cmap = plt.get_cmap('BrBG')
norm = TwoSlopeNorm(vmin=-1, vcenter=0, vmax=1)
colors = [cmap(norm(-1)), cmap(norm(1))]

scat0 = ax.scatter([], [], color=colors[0], label="Class -1", alpha=0.7)
scat1 = ax.scatter([], [], color=colors[1], label="Class 1", alpha=0.7)
current = ax.scatter([], [], s=100, facecolors='none', edgecolors='#d55e00', linewidths=2, label="Current Point")
ax.legend(loc="upper right", frameon=True, fancybox=True, framealpha=0.8)
fig.tight_layout()

# --- Decision field (imshow for speed) ---
gx, gy = np.meshgrid(
    np.linspace(X_min, X_max, 160),
    np.linspace(X_min, X_max, 160)
)
grid = np.c_[gx.ravel(), gy.ravel()]

def field_probs():
    # Eclair returns logits per point; loop over grid
    logits = np.array([model(pt)[0] for pt in grid]).reshape(gx.shape)
    return logits

Z0 = field_probs()
im = ax.imshow(
    Z0,
    extent=[X_min, X_max, X_min, X_max],
    origin='lower',
    alpha=0.45,
    cmap=cmap,
    norm=norm
)
cbar = fig.colorbar(im, ax=ax, fraction=0.046, pad=0.04)
cbar.set_label("Model output (logit / decision value)")

#------------------------------- ANIMATION ----------------------------------
def init():
    empty = np.empty((0, 2))
    scat0.set_offsets(empty)
    scat1.set_offsets(empty)
    current.set_offsets(empty)
    im.set_data(Z0)
    return scat0, scat1, current, im

def update(i):
    # stream one sample through the model (updates internal state/weights if online)
    model.update(X[i], y[i])

    # update decision field
    im.set_data(field_probs())

    # update scatter layers
    xi = X[:i+1]
    mask0 = y[:i+1] == -1
    mask1 = ~mask0
    scat0.set_offsets(xi[mask0])
    scat1.set_offsets(xi[mask1])
    current.set_offsets(X[i])
    return scat0, scat1, current, im

ani = FuncAnimation(
    fig, update, frames=len(X),
    init_func=init, interval=100, blit=True, repeat=False
)

# --- Save animation (mp4 preferred, gif fallback) ---
ani.save("graphics/two_moons_eclair.gif", writer=PillowWriter(fps=10))

plt.close(fig)
    