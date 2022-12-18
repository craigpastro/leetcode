"""
# 303. Range Sum Query - Immutable

Easy

Given an integer array nums, handle multiple queries of the following type:
- Calculate the sum of the elements of nums between indices left and right inclusive where left <= right.

Implement the NumArray class:
- NumArray(int[] nums) Initializes the object with the integer array nums.
- int sumRange(int left, int right) Returns the sum of the elements of nums between indices left and right inclusive (i.e. nums[left] + nums[left + 1] + ... + nums[right]).
"""


class NumArray:
    def __init__(self, nums: List[int]):
        self.sums = [0] * (len(nums) + 1)
        for i, num in enumerate(nums):
            self.sums[i + 1] = nums[i] + self.sums[i]

    def sumRange(self, left: int, right: int) -> int:
        return self.sums[right + 1] - self.sums[left]
