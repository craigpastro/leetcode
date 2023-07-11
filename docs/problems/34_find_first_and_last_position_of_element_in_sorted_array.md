# 34. Find First and Last Position of Element in Sorted Array

Medium

Given an array of integers nums sorted in ascending order, find the starting and
ending position of a given target value.

If target is not found in the array, return [-1, -1].

You must write an algorithm with O(log n) runtime complexity.

```python
class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        m = bsearch(nums, target, 0, len(nums) - 1)
        if m == -1:
            return [-1, -1]

        l = m
        while True:
            tmp = bsearch(nums, target, 0, l - 1)
            if tmp == -1:
                break
            l = tmp

        r = m
        while True:
            tmp = bsearch(nums, target, r + 1, len(nums) - 1)
            if tmp == -1:
                break
            r = tmp

        return [l, r]


def bsearch(nums, target, left, right):
    if left > right:
        return -1

    mid = left + (right - left) // 2
    if nums[mid] == target:
        return mid

    if target > nums[mid]:
        return bsearch(nums, target, mid + 1, right)

    return bsearch(nums, target, left, mid - 1)
```
