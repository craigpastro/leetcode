"""
1. Two Sum

Given an array of integers nums and an integer target, return indices of the
two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may
not use the same element twice.

You can return the answer in any order.
"""

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        d = populate_dict(nums)

        for x in nums:
            y = target - x

            if x == y and nums.count(x) > 1:
                f = nums.index(x)
                s = nums.index(x, f+1)
                return f, s

            if x != y and y in d:
                return d[x], d[y]

def populate_dict(nums):
    d = {}
    for i, num in enumerate(nums):
        d[num] = i
    return d
