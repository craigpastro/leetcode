# 153. Find Minimum in Rotated Sorted Array

Medium

Suppose an array of length n sorted in ascending order is rotated between 1 and
n times. For example, the array nums = [0,1,2,4,5,6,7] might become:

- [4,5,6,7,0,1,2] if it was rotated 4 times.
- [0,1,2,4,5,6,7] if it was rotated 7 times.

Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results in
the array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

Given the sorted rotated array nums of unique elements, return the minimum
element of this array.

You must write an algorithm that runs in O(log n) time.

```python
class Solution:
    def findMin(self, nums: List[int]) -> int:
        return self.helper(nums, 0, len(nums) - 1)

    def helper(self, nums: List[int], low: int, high: int) -> int:
        if low > high:
            return nums[0]

        if low == high:
            return nums[low]

        mid = (high + low) // 2

        if nums[mid] > nums[mid + 1]:
            return nums[mid + 1]

        if nums[mid - 1] > nums[mid]:
            return nums[mid]

        if nums[mid] < nums[high]:
            return self.helper(nums, low, mid - 1)

        return self.helper(nums, mid + 1, high)
```
