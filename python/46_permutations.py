"""
46. Permutations
Medium

Given an array nums of distinct integers, return all the possible
permutations. You can return the answer in any order.
"""


class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        return self.permutations([], nums)

    def permutations(self, prefix: List[int], nums: List[int]) -> List[List[int]]:
        n = len(nums)
        if n == 0:
            return [prefix]

        res = []
        for i in range(n):
            res += self.permutations(prefix + [nums[i]], nums[:i] + nums[i + 1 :])

        return res
