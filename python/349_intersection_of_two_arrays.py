"""
# 349. Intersection of Two Arrays

Easy

Given two integer arrays `nums1` and `nums2`, return an array of their intersection. Each element in the result must be unique and you may return the result in any order.
"""


class Solution:
    def intersection(self, nums1: List[int], nums2: List[int]) -> List[int]:
        d = set()
        for num in set(nums1):
            d.add(num)

        res = []
        for num in set(nums2):
            if num in d:
                res.append(num)

        return res
