"""
268. Missing Number
Easy

Given an array nums containing n distinct numbers in the range [0, n],
return the only number in the range that is missing from the array.

Follow up: Could you implement a solution using only O(1) extra space
complexity and O(n) runtime complexity?
"""


class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        a = [0] * (len(nums) + 1)

        for num in nums:
            a[num] = 1

        return a.index(0)
