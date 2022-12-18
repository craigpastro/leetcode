"""
# 350. Intersection of Two Arrays II

Easy

Given two integer arrays `nums1` and `nums2`, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.
"""


class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        d = {}
        for num in nums1:
            d[num] = d.get(num, 0) + 1

        res = []
        for num in nums2:
            if num in d and d[num] > 0:
                res.append(num)
                d[num] -= 1

        return res
