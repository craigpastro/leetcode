"""
7. Reverse Integer
Medium

Given a signed 32-bit integer x, return x with its digits reversed. If
reversing x causes the value to go outside the signed 32-bit integer
range [-2**31, 2**31 - 1], then return 0.
"""


class Solution:
    def reverse(self, x: int) -> int:
        res = 0
        neg = False

        if x < 0:
            neg = True
            x = -x

        while x > 0:
            res = (res * 10) + (x % 10)
            x //= 10

        if neg:
            res = -res

        if res < -(2**31 - 1) or res > 2**31:
            return 0

        return res
