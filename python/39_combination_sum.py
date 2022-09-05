"""
39. Combination Sum
Medium

Given an array of distinct integers candidates and a target integer
target, return a list of all unique combinations of candidates where
the chosen numbers sum to target. You may return the combinations in
any order.

The same number may be chosen from candidates an unlimited number of
times. Two combinations are unique if the frequency of at least one of
the chosen numbers is different.

It is guaranteed that the number of unique combinations that sum up to
target is less than 150 combinations for the given input.
"""


class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        return helper(sorted(candidates), target, [])


def helper(candidates: List[int], target: int, res: List[int]) -> List[List[int]]:
    if target == 0:
        return [res]

    if len(candidates) == 0:
        return []

    c = candidates[0]
    if c > target:
        return []

    return helper(candidates, target - c, res + [c]) + helper(
        candidates[1:], target, res
    )