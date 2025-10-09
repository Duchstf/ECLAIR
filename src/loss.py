import numpy as np

class BCELoss:
    """
    Binary Cross-Entropy Loss implemented with Look-Up Tables for integer-only arithmetic.
    """
    def __init__(self, logit_bitwidth, precision_bits=8):
        self.logit_bitwidth = logit_bitwidth
        self.precision_bits = precision_bits
        self.scale = 1 << self.precision_bits

        # Determine the integer range of the input logit 'z'
        self.min_logit = -(1 << (logit_bitwidth - 1))
        self.max_logit = (1 << (logit_bitwidth - 1)) - 1
        self.logit_range = self.max_logit - self.min_logit + 1

        self._build_luts()

    def _build_luts(self):
        """Pre-computes the LUTs for the sigmoid and loss term."""

        # 1. Sigmoid LUT for gradient calculation: grad = p - y
        # The LUT stores the quantized probability p_q = round(sigmoid(z) * scale)
        self.sigmoid_lut = np.zeros(self.logit_range, dtype=np.int32)
        for i, z_int in enumerate(range(self.min_logit, self.max_logit + 1)):
            z_float = float(z_int)
            # Clip to prevent overflow in np.exp
            z_clipped = np.clip(z_float, -30, 30)
            p = 1.0 / (1.0 + np.exp(-z_clipped))
            p_q = int(round(p * self.scale))
            self.sigmoid_lut[i] = p_q
            
        # 2. Loss Term LUT for the forward pass
        # We only need a LUT for the term: log(1 + exp(-abs(z)))
        max_abs_z = self.max_logit
        self.log_exp_lut = np.zeros(max_abs_z + 1, dtype=np.int32)
        for abs_z in range(max_abs_z + 1):
            abs_z_float = float(abs_z)
            loss_term = np.log(1.0 + np.exp(-abs_z_float))
            loss_term_q = int(round(loss_term * self.scale))
            self.log_exp_lut[abs_z] = loss_term_q



