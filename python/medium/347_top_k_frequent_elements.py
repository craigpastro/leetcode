"""
347. Top K Frequent Elements
Medium

Given an integer array nums and an integer k, return the k most frequent
elements. You may return the answer in any order.
"""


class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        counts = {}
        for n in nums:
            counts[n] = counts.get(n, 0) + 1

        return sorted(counts.keys(), key=counts.get)[-k:]
