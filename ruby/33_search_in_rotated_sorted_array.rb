# 33. Search in Rotated Sorted Array
# Medium
#
# There is an integer array nums sorted in ascending order (with distinct
#   values).
#
# Prior to being passed to your function, nums is rotated at an unknown pivot
# index k (0 <= k < nums.length) such that the resulting array is [nums[k],
# nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed).
# For example, [0,1,2,4,5,6,7] might be rotated at pivot index 3 and become
# [4,5,6,7,0,1,2].
#
# Given the array nums after the rotation and an integer target, return the
# index of target if it is in nums, or -1 if it is not in nums.
#
# You must write an algorithm with O(log n) runtime complexity.

def search(nums, target)
  pivot = find_pivot(nums, 0, nums.size - 1)
  return bsearch(nums, target) if pivot == -1

  if target >= nums[0]
    # Search the first (larger) half.
    bsearch(nums[...pivot], target)
  else
    # Search the second (smaller) half and offset.
    res = bsearch(nums[pivot..], target)
    res == -1 ? -1 : pivot + res
  end
end

def find_pivot(nums, left, right)
  return -1 if right < left

  mid = left + (right - left) / 2

  if mid < right && nums[mid] > nums[mid + 1]
    mid + 1
  elsif mid > left && nums[mid - 1] > nums[mid]
    mid
  elsif nums[left] > nums[mid]
    # Left side is not sorted; search there
    find_pivot(nums, left, mid - 1)
  else
    find_pivot(nums, mid + 1, right)
  end
end

def bsearch(nums, target)
  left = 0
  right = nums.size - 1

  while left <= right
    mid = left + (right - left) / 2
    return mid if nums[mid] == target

    if target > nums[mid]
      left = mid + 1
    else
      right = mid - 1
    end
  end

  -1
end

puts search([4, 5, 6, 7, 0, 1, 2], 0) # 4
puts search([4, 5, 6, 7, 0, 1, 2], 3) # -1
puts search([1], 0)                   # -1
