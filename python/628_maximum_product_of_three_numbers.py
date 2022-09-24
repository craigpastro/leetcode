"""
628. Maximum Product of Three Numbers
Easy

Given an integer array nums, find three numbers whose product is maximum and
return the maximum product.
"""


class Solution:
    def maximumProduct(self, nums: List[int]) -> int:
        # need the max of the product of the 3 largest numbers or
        # the product of the largest and the 2 smallest numbers.
        s = sorted(nums, reverse=True)
        l = len(s)

        return max(s[0] * s[1] * s[2], s[0] * s[l - 2] * s[l - 1])
