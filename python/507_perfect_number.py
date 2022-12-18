"""
# 507. Perfect Number

Easy

A perfect number is a positive integer that is equal to the sum of its positive divisors, excluding the number itself. A divisor of an integer x is an integer that can divide x evenly.

Given an integer n, return true if n is a perfect number, otherwise return false.
"""

import math


class Solution:
    def checkPerfectNumber(self, num: int) -> bool:
        if num == 1:
            return False

        divisors = set([1])
        for m in range(2, math.ceil(math.sqrt(num))):
            k = num // m
            if k * m == num:
                divisors.add(m)
                divisors.add(k)

        if sum(list(divisors)) == num:
            return True

        return False
