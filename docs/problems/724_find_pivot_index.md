# 724. Find Pivot Index

Easy

Given an array of integers nums, calculate the pivot index of this array.

The pivot index is the index where the sum of all the numbers strictly to the
left of the index is equal to the sum of all the numbers strictly to the index's
right.

If the index is on the left edge of the array, then the left sum is 0 because
there are no elements to the left. This also applies to the right edge of the
array.

Return the leftmost pivot index. If no such index exists, return -1.

## Solution

```python
class Solution:
    def pivotIndex(self, nums: List[int]) -> int:
        if len(nums) == 1:
            return 0

        left = 0
        right = sum(nums)

        for i in range(len(nums)):
            left += nums[i - 1] if i > 0 else 0
            right -= nums[i]
            if left == right:
                return i

        return -1
```
