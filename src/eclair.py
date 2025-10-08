"""
This file implements the ECLAIR algorithm.

Copyright (c) 2025 Duc Hoang

MIT License
"""
from LUT import LUT
from layers import InputLayer, Layer

class Eclair:
    def __init__(self, config):
        self.config = config
        self.layer_sizes = config['layer_sizes']
        self.layer_bitwidths = config['layer_bitwidths']
        self.learning_rate = config['learning_rate']
        self.input_range = config['input_range']

        # Build the input layer
        self.input_layer = InputLayer(self.layer_bitwidths[0], self.input_range)
        self.layers = []

        # for i in range(1, len(self.layer_sizes)):
        #     input_dim = self.layer_sizes[i-1]
        #     output_dim = self.layer_sizes[i]
        #     bitwidth = self.layer_bitwidths[i]

        #     self.layers.append(Layer(input_dim, output_dim, bitwidth))
        
        #Print out the model summary

    
    def update(self, x, y=None):
        if y is not None:
            print("Updating with y")
        else:
            print("Updating without y")
        pass

    def predict(self, x):
        x = self.input_layer(x)
        for layer in self.layers: x = layer(x)
        return x
    
    def __call__(self, x):
        return self.predict(x)

