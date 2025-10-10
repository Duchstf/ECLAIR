import numpy as np

class HingeLoss:
    """
    The loss is defined as L = max(0, margin - y' * z), where y' is in {-1, 1}.
    """
    def __init__(self, margin=1):
        self.margin = margin

    def forward(self, z, y_prime):
        if y_prime not in [-1, 1]:
            raise ValueError("HingeLoss requires labels to be -1 or 1.")
        
        loss = max(0, self.margin - (y_prime * z))
        return loss

    def backward(self, model_output, y_prime):
        
        # The final output is a single integer logit
        z = model_output[0]

        if y_prime not in [-1, 1]: raise ValueError("HingeLoss requires labels to be -1 or 1.")

        if self.margin - (y_prime * z) > 0:
            return -y_prime
        else:
            return 0

