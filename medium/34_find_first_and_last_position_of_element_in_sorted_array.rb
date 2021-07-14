# 34. Find First and Last Position of Element in Sorted Array
# Medium
#
# Given an array of integers nums sorted in ascending order, find the
# starting and ending position of a given target value.
#
# If target is not found in the array, return [-1, -1].
#
# You must write an algorithm with O(log n) runtime complexity.

def search_range(nums, target)
  m = bsearch(nums, target, 0, nums.size - 1)
  return [-1, -1] if m == -1

  l = m
  loop do
    tmp = bsearch(nums, target, 0, l - 1)
    break if tmp == -1

    l = tmp
  end

  r = m
  loop do
    tmp = bsearch(nums, target, r + 1, nums.size - 1)
    break if tmp == -1

    r = tmp
  end

  [l, r]
end

# right is nums.size - 1
def bsearch(nums, target, left, right)
  return -1 if left > right

  mid = left + (right - left) / 2
  return mid if nums[mid] == target

  if target > nums[mid]
    bsearch(nums, target, mid + 1, right)
  else
    bsearch(nums, target, left, mid - 1)
  end
end

p search_range([5, 7, 7, 8, 8, 10], 8)  # [3, 4]
p search_range([5, 7, 7, 8, 8, 10], 6)  # [-1, -1]
p search_range([], 0)                   # [-1, -1]
