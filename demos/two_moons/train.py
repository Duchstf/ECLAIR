import sys
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_moons
from matplotlib.animation import FuncAnimation, PillowWriter

sys.path.append('../../src')
from eclair import Eclair

#------------------------------- MODEL & DATA -----------------------------
config = {
    'layer_sizes': [2, 2, 1],
    'layer_bitwidths': [6, 6, 6],
    'learning_rate': 1,
    'input_range': [-2.5, 2.5],
    'loss': 'HingeLoss'
}

model = Eclair(config)

# Generate the two moons dataset 
X, y = make_moons(n_samples=10, noise=0.2, random_state=42)
y = 2 * y - 1 # Convert 0→-1 and 1→1
X_min, X_max = X.min(axis=0) - 0.5, X.max(axis=0) + 0.5

#------------------------------- FIGURE ----------------------------------
#Create a figure to plot the data points and the model's decision boundary
fig, ax = plt.subplots(figsize=(8, 6))
ax.set_title("Two Moons: Streaming Eclair Decision Boundary")
ax.set_xlabel(r"Feature $x_1$")
ax.set_ylabel(r"Feature $x_2$")
ax.set_xlim(X_min[0], X_max[0])
ax.set_ylim(X_min[1], X_max[1])
ax.grid(True, which='both', linestyle='--', linewidth=0.5)

# Colors
colors = ['#440154', '#21918c']  # colorblind-friendly
scat0 = ax.scatter([], [], c=colors[0], label="Class 0", alpha=0.7)
scat1 = ax.scatter([], [], c=colors[1], label="Class 1", alpha=0.7)
current = ax.scatter([], [], s=100, facecolors='none', edgecolors='#d55e00', linewidths=2, label="Current Point")
ax.legend(loc="upper right", frameon=True, fancybox=True, framealpha=0.8)
fig.tight_layout()

# --- Decision field (imshow for speed) ---
gx, gy = np.meshgrid(
    np.linspace(X_min[0], X_max[0], 160),
    np.linspace(X_min[1], X_max[1], 160)
)
grid = np.c_[gx.ravel(), gy.ravel()]

def sigmoid(a):  # logits -> prob
    return 1.0 / (1.0 + np.exp(-a))

def field_probs():
    # Eclair returns logits per point; loop over grid
    logits = np.array([model(pt)[0] for pt in grid]).reshape(gx.shape)
    return sigmoid(logits)

Z0 = field_probs()
im = ax.imshow(
    Z0,
    extent=[X_min[0], X_max[0], X_min[1], X_max[1]],
    origin='lower',
    alpha=0.30,
    cmap='coolwarm',
    vmin=0, vmax=1
)

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
    mask0 = y[:i+1] == 0
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
ani.save("graphics/two_moons_eclair.gif", writer=PillowWriter(fps=25))

plt.close(fig)
    