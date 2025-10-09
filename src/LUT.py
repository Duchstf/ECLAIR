"""
Copyright (c) 2025 Duc Hoang

MIT License
"""

import numpy as np

class LUT:
    """
    Updatable lookup table for ECLAIR
    """
    def __init__(self, input_bitwidth, ouput_bitwidth, memory_init=None):
        self.input_bitwidth = input_bitwidth
        self.output_bitwidth = ouput_bitwidth
        self.lut_addr_size = 1 << input_bitwidth #how many addresses there are 
        self._mem = np.zeros(self.lut_addr_size, dtype=np.int32) if memory_init is None else memory_init

    def read(self, addr: int) -> int:
        return self._mem[addr]

    