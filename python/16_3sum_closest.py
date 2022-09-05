"""
16. 3Sum Closest
Medium

Given an integer array nums of length n and an integer target, find three
integers in nums such that the sum is closest to target.

Return the sum of the three integers.

You may assume that each input would have exactly one solution.
"""


class Solution:
    def threeSumClosest(self, nums: List[int], target: int) -> int:
        nums.sort()
        best_candidate = nums[0] + nums[1] + nums[2]

        n = len(nums)
        for i in range(n):
            j, k = i + 1, n - 1
            while j < k:
                candidate = nums[i] + nums[j] + nums[k]

                if candidate == target:
                    return candidate

                if abs(target - candidate) < abs(target - best_candidate):
                    best_candidate = candidate

                if candidate < target:
                    j += 1
                else:
                    k -= 1

        return best_candidate
