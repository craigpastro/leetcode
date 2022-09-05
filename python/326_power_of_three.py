"""
326. Power of Three
Easy

Given an integer n, return true if it is a power of three. Otherwise,
return false.

An integer n is a power of three, if there exists an integer x such that
n == 3^x.
"""


class Solution:
    def isPowerOfThree(self, n: int) -> bool:
        m = 1
        while m < n:
            m *= 3

        return m == n
