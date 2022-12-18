"""
# 977. Squares of a Sorted Array

Easy

Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
"""


class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        return list(sorted(map(lambda x: x * x, nums)))
