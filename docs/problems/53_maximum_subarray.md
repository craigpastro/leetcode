# 53. Maximum Subarray

Medium

Given an integer array nums, find the contiguous subarray (containing at least
one number) which has the largest sum and return its sum.

A subarray is a contiguous part of an array.

```python
class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        cur = 0
        max = -10000

        for num in nums:
            if num > cur + num:
                cur = num
            else:
                cur += num

            if cur > max:
                max = cur

        return max
```
