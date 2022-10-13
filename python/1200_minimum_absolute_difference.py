"""
1200. Minimum Absolute Difference
Easy

Given an array of distinct integers arr, find all pairs of elements with the
minimum absolute difference of any two elements.

Return a list of pairs in ascending order(with respect to pairs), each pair
[a, b] follows
- a, b are from arr
- a < b
- b - a equals to the minimum absolute difference of any two elements in arr
"""


class Solution:
    def minimumAbsDifference(self, arr: List[int]) -> List[List[int]]:
        arr.sort()
        pairs = list(zip(arr[:-1], arr[1:]))
        m = min([y - x for [x, y] in pairs])
        return [[x, y] for [x, y] in pairs if y - x == m]
