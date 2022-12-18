"""
# 643. Maximum Average Subarray I

Easy

You are given an integer array nums consisting of n elements, and an integer k.

Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.
"""


class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        curr = sum(nums[:k])
        max_curr = curr

        for i in range(1, len(nums) - k + 1):
            curr = curr + nums[i + k - 1] - nums[i - 1]
            if curr > max_curr:
                max_curr = curr

        return max_curr / k
