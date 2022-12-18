"""
# 922. Sort Array By Parity II

Easy

Given an array of integers nums, half of the integers in nums are odd, and the other half are even.

Sort the array so that whenever `nums[i]` is odd, `i` is odd, and whenever `nums[i]` is even, `i` is even.

Return any answer array that satisfies this condition.
"""


class Solution:
    def sortArrayByParityII(self, nums: List[int]) -> List[int]:
        return [
            x
            for z in zip(
                [x for x in nums if x % 2 == 0], [x for x in nums if x % 2 == 1]
            )
            for x in z
        ]
