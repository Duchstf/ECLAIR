import sys

from sklearn.datasets import make_moons
import numpy as np

sys.path.append('../../src')
from eclair import Eclair

# Generate the two moons dataset 
X, y = make_moons(n_samples=500, noise=0.2, random_state=42)
X_min, X_max = X.min(axis=0) - 0.5, X.max(axis=0) + 0.5
X.shape, y.shape


config = {
    'layer_sizes': [2, 2, 1],
    'layer_bitwidths': [6, 6, 6],
    'learning_rate': 0.1,
    'input_range': [-2.5, 2.5]
}

model = Eclair(config)

#Create a figure to plot the data points and the model's decision boundary
# fig, ax = plt.subplots(figsize=(8, 6))

#Stream single data points into the model
for i in range(len(X)):

    print(model(X[i]))

    #Plot the decision boundary
    