# 35. Search Insert Position
# Easy
#
# Given a sorted array of distinct integers and a target value, return the
# index if the target is found. If not, return the index where it would be
# if it were inserted in order.
#
# You must write an algorithm with O(log n) runtime complexity.

def search_insert(nums, target)
  left = 0
  right = nums.size

  while left < right
    mid = left + (right - left) / 2

    return mid if nums[mid] == target

    if target < nums[mid]
      right = mid
    else
      left = mid + 1
    end
  end

  right
end

search_insert([1, 3, 5, 6])  # 5
search_insert([1, 3, 5, 6])  # 2
search_insert([1, 3, 5, 6])  # 7
search_insert([1, 3, 5, 6])  # 0
search_insert([1])  # 0
