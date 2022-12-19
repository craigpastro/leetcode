# 704. Binary Search

Easy

Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

You must write an algorithm with O(log n) runtime complexity.

```python
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        i = 0
        j = len(nums)

        while i < j:
            m = i + (j - i) // 2
            if target == nums[m]:
                return m
            elif target < nums[m]:
                j = m
            else:
                i = m + 1

        return -1
```
