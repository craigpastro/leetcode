"""
747. Largest Number At Least Twice of Others
Easy

You are given an integer array nums where the largest integer is unique.

Determine whether the largest element in the array is at least twice as much
as every other number in the array. If it is, return the index of the largest
element, or return -1 otherwise.
"""


class Solution:
    def dominantIndex(self, nums: List[int]) -> int:
        m1 = max(nums)
        idx = nums.index(m1)

        nums.remove(m1)
        m2 = max(nums)
        if m1 >= 2 * m2:
            return idx

        return -1
