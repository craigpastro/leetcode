"""
# 693. Binary Number with Alternating Bits

Easy

Given a positive integer, check whether it has alternating bits: namely, if two adjacent bits will always have different values.
"""


class Solution:
    def hasAlternatingBits(self, n: int) -> bool:
        bits = format(n, "b")

        for i in range(1, len(bits)):
            if bits[i - 1] == bits[i]:
                return False

        return True
