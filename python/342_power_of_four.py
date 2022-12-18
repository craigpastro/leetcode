"""
# 342. Power of Four

Easy

Given an integer `n`, return true if it is a power of four. Otherwise, return false.

An integer `n` is a power of four, if there exists an integer `x` such that `n == 4^x`.
"""


class Solution:
    def isPowerOfFour(self, n: int) -> bool:
        m = 1
        while m < n:
            m *= 4

        return m == n
