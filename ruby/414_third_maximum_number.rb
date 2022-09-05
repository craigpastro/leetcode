# 414. Third Maximum Number
# Easy
#
# Given integer array nums, return the third maximum number in this array. If
# the third maximum does not exist, return the maximum number.

def third_max(nums)
  sorted = nums.uniq.sort { |a, b| b <=> a }
  sorted.size >= 3 ? sorted[2] : sorted[0]
end
