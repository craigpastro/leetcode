# 136. Single Number

Easy

Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.

```python
class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        d = {}
        for num in nums:
            d[num] = d.get(num, 0) + 1

        for k, v in d.items():
            if v == 1:
                return k
```