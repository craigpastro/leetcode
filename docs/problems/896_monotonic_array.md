# 896. Monotonic Array

Easy

An array is monotonic if it is either monotone increasing or monotone
decreasing.

- An array nums is monotone increasing if for all i <= j, nums[i] <= nums[j].
- An array nums is monotone decreasing if for all i <= j, nums[i] >= nums[j].

Given an integer array nums, return true if the given array is monotonic, or
false otherwise.

## Solution

```python
class Solution:
    def isMonotonic(self, nums: List[int]) -> bool:
        return self.monotonic(nums, lambda x, y: x <= y) or self.monotonic(
            nums, lambda x, y: x >= y
        )

    def monotonic(self, nums, f):
        for i in range(1, len(nums)):
            if not f(nums[i - 1], nums[i]):
                return False

        return True
```
