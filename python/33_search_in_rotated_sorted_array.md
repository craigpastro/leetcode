# 33. Search in Rotated Sorted Array

Medium

There is an integer array nums sorted in ascending order (with distinct values).

Prior to being passed to your function, `nums` is rotated at an unknown pivot index `k` (`0 <= k < nums.length`) such that the resulting array is `[nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]]` (0-indexed). For example, `[0,1,2,4,5,6,7]` might be rotated at pivot index 3 and become `[4,5,6,7,0,1,2]`.

Given the array nums after the rotation and an integer target, return the index of target if it is in nums, or `-1` if it is not in nums.

You must write an algorithm with `O(log n)` runtime complexity.

```python
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        pivot = find_pivot(nums, 0, len(nums) - 1)
        if pivot == -1:
            return bsearch(nums, target)

        if target >= nums[0]:
            # Search the first (larger) half.
            return bsearch(nums[:pivot], target)
        else:
            # Search the second (smaller) half and offset.
            res = bsearch(nums[pivot:], target)
            if res == -1:
                return -1
            else:
                return pivot + res


def find_pivot(nums, left, right):
    if right < left:
        return -1

    mid = left + (right - left) // 2

    if mid < right and nums[mid] > nums[mid + 1]:
        return mid + 1
    elif mid > left and nums[mid - 1] > nums[mid]:
        return mid
    elif nums[left] > nums[mid]:
        # Left side is not sorted; search there
        return find_pivot(nums, left, mid - 1)
    else:
        return find_pivot(nums, mid + 1, right)


def bsearch(nums, target):
    left = 0
    right = len(nums) - 1

    while left <= right:
        mid = left + (right - left) // 2

        if nums[mid] == target:
            return mid

        if target > nums[mid]:
            left = mid + 1
        else:
            right = mid - 1

    return -1
```
