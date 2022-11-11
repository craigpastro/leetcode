"""
78. Subsets
Medium

Given an integer array nums of unique elements, return all possible subsets
(the power set).

The solution set must not contain duplicate subsets. Return the solution in
any order.
"""


class Solution:
    def subsets(self, nums: List[int]) -> List[List[int]]:
        return self.helper([], nums)

    def helper(self, bag: List[int], rest: List[int]) -> List[List[int]]:
        if len(rest) == 0:
            return [bag]

        res = [bag]
        for i in range(len(rest)):
            res.extend(self.helper(bag + [rest[i]], rest[i + 1 :]))

        return res
