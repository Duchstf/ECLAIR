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
        self.min_acc_val = -(2 ** (output_bitwidth - 1))
        self.max_acc_val =  (2 ** (output_bitwidth - 1)) - 1

        #Initialize the LUTs
        self.luts = [[LUT(input_bitwidth, output_bitwidth) for _ in range(self.output_dim)] for _ in range(self.input_dim)]

    def forward(self, x):
        """
        The input x is basically the list of index of the LUT to use.
        The output is the list of accumulators output.
        """

        y = np.zeros(self.output_dim, dtype=np.int32)

        for out_index in range(self.output_dim):

            # For each output feature there is an accumulator
            acc = sum(self.luts[i][out_index].read(x[i]) for i in range(self.input_dim))

            #Clamp the accumulator
            acc = max(self.min_acc_val, min(acc, self.max_acc_val))

            y[out_index] = acc

        return y

    def backward(self, x, grad_y, learning_rate):
        """
        Performs one step of backpropagation for this layer.
        1. Updates the layer's internal LUTs.
        2. Computes and returns the gradient for the previous layer.
        """

        #The gradient of the loss w.r.t this layer's input (grad_x).
        grad_x = np.zeros(self.input_dim, dtype=np.int64)

        for i in range(self.input_dim):
            addr = x[i]
            weighted_grad_sum = 0
            for j in range(self.output_dim):

                #If there is no gradient do not do anything
                grad_out_j = grad_y[j]
                if grad_out_j == 0: continue
                
                delta = -learning_rate * np.sign(grad_out_j)
                lut = self.luts[i][j]
                mem = lut._mem

                # --- Update the main address ---
                mem[addr] = np.clip(mem[addr] + delta, self.min_acc_val, self.max_acc_val)

                # --- Smoothness: update neighbors slightly less ---
                if addr > 0:
                    mem[addr - 1] = np.clip(round(mem[addr - 1] + 0.5 * delta), self.min_acc_val, self.max_acc_val)
                if addr < len(mem) - 1:
                    mem[addr + 1] = np.clip(round(mem[addr + 1] + 0.5 * delta), self.min_acc_val, self.max_acc_val)

                # Calculate contribution to the backpropagated gradient.
                # The "weight" of the connection is approximated by the LUT value.
                lut_value = self.luts[i][j].read(addr) 
                weighted_grad_sum += grad_y[j] * lut_value
            
            grad_x[i] = weighted_grad_sum
        
        return grad_x
    
    def __call__(self, x):
        return self.forward(x)