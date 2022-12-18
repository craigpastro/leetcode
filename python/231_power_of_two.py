"""
# 231. Power of Two

Easy

Given an integer `n`, return true if it is a power of two. Otherwise, return false.

An integer `n` is a power of two, if there exists an integer `x` such that `n == 2 ** x`.
"""


class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        if n <= 0:
            return False

        return format(n, "b").count("1") == 1
