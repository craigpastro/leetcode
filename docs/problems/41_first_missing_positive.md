# 41. First Missing Positive

Hard

Given an unsorted integer array nums, return the smallest missing positive
integer.

You must implement an algorithm that runs in O(n) time and uses constant extra
space.

```python
class Solution:
    def firstMissingPositive(self, nums: List[int]) -> int:
        n = len(nums)

        # Get rid of any non-positives.
        for i in range(n):
            if nums[i] <= 0:
                nums[i] = n + 1

        # Fill holes where we can.
        i = 0
        while i < n:
            index = nums[i] - 1
            while index >= 0 and index < n:
                nums[index], index = -1, nums[index] - 1
            i += 1

        # Find the first hole.
        for i, num in enumerate(nums):
            if num > 0:
                return i + 1

        # No hole.
        return n + 1
```
