"""
169. Majority Element
Easy

Given an array nums of size n, return the majority element.

The majority element is the element that appears more than floor(n/2)
times. You may assume that the majority element always exists in the array.
"""


class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        majority = len(nums) // 2
        d = {}

        for num in nums:
            if num in d:
                d[num] += 1
            else:
                d[num] = 1

            if d[num] > majority:
                return num
