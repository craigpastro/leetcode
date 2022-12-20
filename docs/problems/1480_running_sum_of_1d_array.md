# 1480. Running Sum of 1d Array

Easy

Given an array `nums`. We define a running sum of an array as `runningSum[i] = sum(nums[0]…nums[i])`.

Return the running sum of `nums`.

```python
class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        sums = [nums[0]]
        for i in range(1, len(nums)):
            sums.append(sums[i - 1] + nums[i])

        return sums
```
