"""
# 228. Summary Ranges

Easy

You are given a sorted unique integer array nums.

Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

Each range [a,b] in the list should be output as:
- "a->b" if a != b
- "a" if a == b
"""


class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        res = []
        tmp = []

        for num in nums:
            if len(tmp) == 0 or tmp[-1] + 1 == num:
                tmp.append(num)
            else:
                res.append(tmp)
                tmp = [num]

        if len(tmp) != 0:
            res.append(tmp)

        return [f"{tmp[0]}->{tmp[-1]}" if len(tmp) > 1 else str(tmp[0]) for tmp in res]
