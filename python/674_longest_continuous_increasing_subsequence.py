"""
# 674. Longest Continuous Increasing Subsequence

Easy

Given an unsorted array of integers nums, return the length of the longest continuous increasing subsequence (i.e. subarray). The subsequence must be strictly increasing.

A continuous increasing subsequence is defined by two indices l and r (l < r) such that it is [nums[l], nums[l + 1], ..., nums[r - 1], nums[r]] and for each l <= i < r, nums[i] < nums[i + 1].
"""


class Solution:
    def findLengthOfLCIS(self, nums: List[int]) -> int:
        res = 1
        cur = 1

        for i in range(1, len(nums)):
            if nums[i - 1] < nums[i]:
                cur += 1
                res = max(res, cur)
            else:
                cur = 1

        return res
