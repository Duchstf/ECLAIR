"""
Copyright (c) 2025 Duc Hoang

MIT License
"""

import numpy as np

class LUT:
    """Updatable integer-only lookup table (signed output)"""

    def __init__(self, input_bitwidth, output_bitwidth, memory_init=None):
        self.input_bitwidth = input_bitwidth
        self.output_bitwidth = output_bitwidth
        self.lut_addr_size = 1 << input_bitwidth
        self.y_min = -(1 << (output_bitwidth - 1))
        self.y_max = (1 << (output_bitwidth - 1)) - 1
        dtype = np.int32

        if memory_init is not None:
            self._mem = np.clip(np.array(memory_init, dtype=dtype), self.y_min, self.y_max)
        else:
            # Start with small random values, then clip to be safe
            initial_values = np.random.normal(loc=0, scale=3, size=self.lut_addr_size)
            self._mem = np.array(initial_values, dtype=dtype)

    def read(self, addr: int) -> int:
        return int(self._mem[addr])

    def write(self, addr: int, value: int):
        self._mem[addr] = np.int32(np.clip(value, self.y_min, self.y_max))


    