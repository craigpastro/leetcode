"""
190. Reverse Bits
Easy

Reverse bits of a given 32 bits unsigned integer.
"""


class Solution:
    def reverseBits(self, n: int) -> int:
        return int(format(n, "b").zfill(32)[::-1], 2)
