"""
414. Third Maximum Number
Easy

Given integer array nums, return the third maximum number in this array. If
the third maximum does not exist, return the maximum number.
"""


class Solution:
    def thirdMax(self, nums: List[int]) -> int:
        s = sorted(set(nums), reverse=True)
        if len(s) > 2:
            return s[2]

        return s[0]
