"""
This file implements the ECLAIR algorithm.

Copyright (c) 2025 Duc Hoang

MIT License
"""
from LUT import LUT
from layers import InputLayer, Layer
from loss import HingeLoss

class Eclair:
    def __init__(self, config):
        self.config = config
        self.layer_sizes = config['layer_sizes']
        self.layer_bitwidths = config['layer_bitwidths']
        self.learning_rate = config['learning_rate']
        self.input_range = config['input_range']
        self.loss_fn = eval(config['loss'])()
        self.last_inputs = [] # Stores inputs to layers for the update pass

        # Build the input layer
        self.input_layer = InputLayer(self.layer_bitwidths[0], self.input_range)
        self.layers = []

        for i in range(1, len(self.layer_sizes)):
            input_dim = self.layer_sizes[i-1]
            output_dim = self.layer_sizes[i]
            input_bitwidth = self.layer_bitwidths[i-1]
            output_bitwidth = self.layer_bitwidths[i]

            self.layers.append(Layer(input_dim, output_dim, input_bitwidth, output_bitwidth))
        
    def update(self, x, y):
        """
        Performs a forward pass, calculates gradient, and updates the model.
        """

        # --- Forward Pass ---
        # First quantize the training input
        x_quantized = self.input_layer(x)

        # Run them through the layers
        x_current = x_quantized
        for layer in self.layers:
            x_current = layer(x_current)
            self.last_inputs.append(x_current)


        # --- Backward (Update) Step ---
        gradient = self.loss_fn.backward(x_current, y)

        #Update the layers using the gradient

        



    def forward(self, x):
        x = self.input_layer(x)
        for layer in self.layers: x = layer(x)
        return x
    
    def __call__(self, x):
        return self.forward(x)

