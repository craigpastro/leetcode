# 561. Array Partition

Easy

Given an integer array nums of 2n integers, group these integers into n pairs
(a1, b1), (a2, b2), ..., (an, bn) such that the sum of min(ai, bi) for all i is
maximized. Return the maximized sum.

## Solution

```python
class Solution:
    def arrayPairSum(self, nums: List[int]) -> int:
        return sum([x for i, x in enumerate(sorted(nums)) if i % 2 == 0])
```