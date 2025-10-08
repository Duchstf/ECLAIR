class LossFunction:
    def __init__(self, name):
        self.name = name

    def forward(self, y_true, y_pred):
        pass

    def backward(self, y_true, y_pred):
        pass