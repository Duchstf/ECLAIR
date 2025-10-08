"""
Copyright (c) 2025 Duc Hoang

MIT License
"""

class LUT:
    """
    Updatable lookup table for ECLAIR with fixed depth and bit width.

    - Addresses: 0 .. depth-1 (ints)
    - Values: masked to width bits (unsigned)

    """
    def __init__(self, depth, bitwidth, memory=None):
        self.depth = depth
        self.bitwidth = bitwidth
        
        # Initialize memory
        if memory is None:
            self.lut = np.zeros((depth, bitwidth), dtype=np.uint8)
        else:
            self.lut = memory

    # ---- Core API (VHDL Style) ----
    def read(self, addr: int) -> int:
        self._check_addr(addr)
        return self._mem[addr]

    def write(self, addr: int, value: int) -> None:
        self._check_addr(addr)
        self._mem[addr] = value & self._mask