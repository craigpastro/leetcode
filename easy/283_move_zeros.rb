# 283. Move Zeroes
# Easy
#
# Given an integer array nums, move all 0's to the end of it while maintaining
# the relative order of the non-zero elements.
#
# Note that you must do this in-place without making a copy of the array.

def move_zeroes(nums)
  j = 0
  
  (0...nums.size).each do |i|
    if nums[i] != 0
      nums[j] = nums[i]
      j += 1
    end
  end

  (j...nums.size).each do |i|
    nums[i] = 0
  end

  nums
end

p move_zeroes([0, 1, 0, 3, 12]) # [1,3,12,0,0]
p move_zeroes([0])  # [0]
