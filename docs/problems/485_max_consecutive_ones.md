# 485. Max Consecutive Ones

Easy

Given a binary array nums, return the maximum number of consecutive 1's in the array.

```python
class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        res, cur = 0, 0

        for num in nums:
            if num == 1:
                cur += 1
            else:
                if cur > res:
                    res = cur
                cur = 0

        if cur > res:
            res = cur

        return res
```
