import sys
import numpy as np
import matplotlib.pyplot as plt
import os  # Added for creating plot directory
import torch
import torch.nn as nn
import torch.optim as optim
from common import build_time_series, save_static_four_plots

NUM_SAMPLES = 1000

# Ensure plot directory exists
os.makedirs('plots', exist_ok=True)

# ------------------------------- DATASET --------------------------
t_series, x_series, y_series = build_time_series(NUM_SAMPLES)

#------------------------------- PYTORCH MODEL -----------------------------

# --- PyTorch Model Definition ---
class PyTorchMLP(nn.Module):
    def __init__(self, layer_sizes):
        super(PyTorchMLP, self).__init__()
        # Simple MLP: linear -> relu -> linear
        self.layers = nn.Sequential(
            nn.Linear(layer_sizes[0], layer_sizes[1]),
            nn.ReLU(),
            nn.Linear(layer_sizes[1], layer_sizes[2])
        )
    
    def forward(self, x):
        return self.layers(x)

# --- Config and Model Setup ---
config = {
    'layer_sizes': [1, 128, 1],
    'learning_rate': 0.01, # NOTE: 0.3 is very high for standard SGD. 
                           # Using 0.01. You can also try Adam optimizer.
}

# --- PyTorch Model Setup ---
pytorch_model = PyTorchMLP(config['layer_sizes'])
learning_rate = config['learning_rate']
optimizer = optim.SGD(pytorch_model.parameters(), lr=learning_rate)
criterion = nn.MSELoss()

print("Using PyTorch MLP Model:")
print(pytorch_model)

#------------------------------- STANDARD PYTORCH LOOP -----------------------------
# We no longer need the custom 'feedback_stream' as that was
# specific to your MLP's update logic. We use a standard
# online learning loop.

y_pred_series = []
mse_loss_series = []

print("\nStarting PyTorch online learning loop...")

for i in range(len(t_series)):

    t, x, y = t_series[i], x_series[i], y_series[i]
    
    # Convert data to tensors
    # Input x needs to be [batch_size, num_features] -> [1, 1]
    x_tensor = torch.tensor([[x]], dtype=torch.float32)
    # Target y needs to be [batch_size, num_features] -> [1, 1]
    y_tensor = torch.tensor([[y]], dtype=torch.float32)

    # --- Standard PyTorch Training Step ---
    
    # 1. Zero gradients
    optimizer.zero_grad()
    
    # 2. Forward pass
    pred_tensor = pytorch_model(x_tensor)
    
    # 3. Calculate loss
    loss = criterion(pred_tensor, y_tensor)
    
    # 4. Backward pass (compute gradients)
    loss.backward()
    
    # 5. Update weights
    optimizer.step()
    
    # --- Store results ---
    y_pred_series.append(pred_tensor.item()) # .item() gets scalar from tensor
    mse_loss_series.append(loss.item())


    if (i + 1) % 100 == 0:
        print(f"Step {i+1}/{NUM_SAMPLES}, Current MSE Loss: {loss.item():.6f}")

print("...Loop finished.")

#------------------------------- PLOTTING -----------------------------
y_pred_series = np.array(y_pred_series)
mse_loss_series = np.array(mse_loss_series)

save_static_four_plots(
    t_data=t_series,
    x_data=x_series,
    y_data=y_series,
    y_pred_data=y_pred_series,
    loss_data=mse_loss_series,
    out_file="plots/PyTorch_MLP.png", # Changed output file name
    figsize=(10, 10) # Make figure taller for 4 plots
)