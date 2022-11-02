"""
1752. Check if Array Is Sorted and Rotated
Easy

Given an array nums, return true if the array was originally sorted in
non-decreasing order, then rotated some number of positions (including zero).
Otherwise, return false.

There may be duplicates in the original array.

Note: An array A rotated by x positions results in an array B of the same
length such that A[i] == B[(i+x) % A.length], where % is the modulo operation.
"""


class Solution:
    def check(self, nums: List[int]) -> bool:
        n = len(nums)
        pivot = 0

        for i in range(1, n):
            if nums[i - 1] > nums[i]:
                pivot = i
                break

        if pivot == 0:
            return True

        rotatedNums = nums[pivot:] + nums[:pivot]
        for i in range(1, n):
            if rotatedNums[i - 1] > rotatedNums[i]:
                return False

        return True
