# 217. Contains Duplicate
# Easy
#
# Given an integer array nums, return true if any value appears at least
# twice in the array, and return false if every element is distinct.

def contains_duplicate(nums)
  nums.uniq.size != nums.size
end

puts contains_duplicate([1, 2, 3, 1])  # true
puts contains_duplicate([1, 2, 3, 4])  # false
puts contains_duplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2])  # true
