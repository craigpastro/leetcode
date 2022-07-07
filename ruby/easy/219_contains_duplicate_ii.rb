# 219. Contains Duplicate II
# Easy
#
# Given an integer array nums and an integer k, return true if there are two
# distinct indices i and j in the array such that nums[i] == nums[j] and
# abs(i - j) <= k.

def contains_nearby_duplicate(nums, k)
  h = {}

  nums.each.with_index do |num, i|
    return true if h.has_key?(num) && i - h[num] <= k

    h[num] = i
  end

  false
end

puts contains_duplicate([1, 2, 3, 1], 3) # true
puts contains_duplicate([1, 0, 1, 1], 1) # true
puts contains_duplicate([1, 2, 3, 1, 2, 3], 2) # false
