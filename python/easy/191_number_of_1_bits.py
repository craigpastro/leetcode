"""
191. Number of 1 Bits
Easy

Write a function that takes an unsigned integer and returns the number of
'1' bits it has (also known as the Hamming weight).
"""


class Solution:
    def hammingWeight(self, n: int) -> int:
        return format(n, "b").count("1")
