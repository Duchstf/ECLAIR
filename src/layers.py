from LUT import LUT
import numpy as np

class InputLayer:
    def __init__(self, bitwidth, input_range):
        self.bitwidth = bitwidth
        self.min_val, self.max_val = input_range
        self.qmin = -(1 << (bitwidth - 1))
        self.qmax = (1 << (bitwidth - 1)) - 1
        self.scale = (self.max_val - self.min_val) / (self.qmax - self.qmin)

    def forward(self, x):
        x = np.clip(x, self.min_val, self.max_val)
        q = np.round(x / self.scale)
        return np.clip(q, self.qmin, self.qmax).astype(np.int32)


    def __call__(self, x):
        #x can be floating points
        return self.forward(x)

    

class Layer:
    def __init__(self, input_dim, output_dim, input_bitwidth, output_bitwidth):
        self.input_dim = input_dim
        self.output_dim = output_dim
        self.input_bitwidth = input_bitwidth
        self.output_bitwidth = output_bitwidth

        #Initialize the LUTs
        self.luts = [[LUT(input_bitwidth, output_bitwidth) for _ in range(self.output_dim)] for _ in range(self.input_dim)]

    def forward(self, x):
        """
        The input x is basically the list of index of the LUT to use.
        The output is the list of accumulators output.
        """

        y = np.zeros(self.output_dim, dtype=np.int64)

        for out_index in range(self.output_dim):
            
            # For each output feature there is an accumulator
            acc = sum(self.luts[i][out_index].read(x[i]) for i in range(self.input_dim))
            y[out_index] = acc

        return y

    def backward(self, x):
        pass
    
    def __call__(self, x):
        return self.forward(x)