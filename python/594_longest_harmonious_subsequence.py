"""
594. Longest Harmonious Subsequence
Easy
We define a harmonious array as an array where the difference between its
maximum value and its minimum value is exactly 1.

Given an integer array nums, return the length of its longest harmonious
subsequence among all its possible subsequences.

A subsequence of array is a sequence that can be derived from the array by
deleting some or no elements without changing the order of the remaining elements.
"""


class Solution:
    def findLHS(self, nums: List[int]) -> int:
        d = {}
        for num in nums:
            d[num] = d.get(num, 0) + 1

        res = 0
        for num in d:
            if num + 1 in d:
                res = max(res, d[num] + d[num + 1])

        return res
