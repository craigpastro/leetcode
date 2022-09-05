"""
172. Factorial Trailing Zeroes
Medium

Given an integer n, return the number of trailing zeroes in n!.
"""


class Solution:
    def trailingZeroes(self, n: int) -> int:
        res = 0

        while n > 0:
            n //= 5
            res += 1

        return res
