"""
# 448. Find All Numbers Disappeared in an Array

Easy

Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.
"""


class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        seen = [0] * len(nums)

        for i in nums:
            seen[i - 1] = 1

        res = []
        for i in range(len(seen)):
            if seen[i] == 0:
                res.append(i + 1)

        return res
