"""
69. Sqrt(x)
Easy

Given a non-negative integer x, compute and return the square root of x.

Since the return type is an integer, the decimal digits are truncated, and
only the integer part of the result is returned.

Note: You are not allowed to use any built-in exponent function or operator,
such as pow(x, 0.5) or x ** 0.5.
"""

# See https://en.wikipedia.org/wiki/Integer_square_root#Algorithm_using_Newton's_method
class Solution:
    def mySqrt(self, x: int) -> int:

        x0 = x >> 1
        if x0 == 0:
            return x

        x1 = (x0 + x // x0) >> 1

        while x1 < x0:
            x0 = x1
            x1 = (x0 + x // x0) >> 1

        return x0
