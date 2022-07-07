# 53. Maximum Subarray
# Easy
#
# Given an integer array nums, find the contiguous subarray (containing at
# least one number) which has the largest sum and return its sum.

def max_sub_array(nums)
  cur = nums[0]
  max = nums[0]

  nums[1..].each do |n|
    if n > cur + n
      cur = n
    else
      cur += n
    end
    max = cur if cur > max
  end

  max
end

puts max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4]) # 6
puts max_sub_array([1])                             # 1
puts max_sub_array([5, 4, -1, 7, 8])                # 23
