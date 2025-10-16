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
        self.L = 3
        self.min_acc_val = -(2 ** (output_bitwidth - 1))
        self.max_acc_val =  (2 ** (output_bitwidth - 1)) - 1

        #Initialize the LUTs
        self.luts = [[LUT(input_bitwidth, output_bitwidth) for i in range(self.output_dim)] for j in range(self.input_dim)]

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
        grad_x = np.zeros(self.input_dim, dtype=np.int64)

        for i in range(self.input_dim):
            addr = x[i]
            weighted_grad_sum = 0
            for j in range(self.output_dim):
                lut = self.luts[i][j]
                mem = lut._mem
                grad_out_j = grad_y[j]

                if grad_out_j == 0:
                    continue

                delta = -learning_rate * np.sign(grad_out_j)
                
                # --- Enforce Lipschitz Constraint ---
                current_val = mem[addr]
                
                # Constraint with previous neighbor
                if addr > 0:
                    prev_val = mem[addr - 1]
                    # The new value must be in [prev_val - L, prev_val + L]
                    # This translates to a constraint on delta
                    delta_min = prev_val - current_val - self.L
                    delta_max = prev_val - current_val + self.L
                    delta = np.clip(delta, delta_min, delta_max)

                # Constraint with next neighbor
                if addr < len(mem) - 1:
                    next_val = mem[addr + 1]
                    # The new value must be in [next_val - L, next_val + L]
                    delta_min = next_val - current_val - self.L
                    delta_max = next_val - current_val + self.L
                    delta = np.clip(delta, delta_min, delta_max)
                # ------------------------------------

                # Update the main address with the constrained delta
                mem[addr] = np.clip(mem[addr] + delta, self.min_acc_val, self.max_acc_val)
                
                # The smoothness update can be kept or removed depending on desired behavior
                # if addr > 0:
                #     mem[addr - 1] = np.clip(mem[addr - 1] + 0.5 * delta, self.min_acc_val, self.max_acc_val)
                # if addr < len(mem) - 1:
                #     mem[addr + 1] = np.clip(mem[addr + 1] + 0.5 * delta, self.min_acc_val, self.max_acc_val)

                # ... (rest of the backprop calculation)
                val_prev = mem[addr - 1] if addr > 0 else mem[addr]
                val_next = mem[addr + 1] if addr < len(mem) - 1 else mem[addr]
                local_slope = val_next - val_prev 
                weighted_grad_sum += grad_y[j] * local_slope
            
            grad_x[i] = weighted_grad_sum
        
        return grad_x
    
    def __call__(self, x):
        return self.forward(x)