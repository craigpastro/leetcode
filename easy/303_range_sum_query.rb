# 303. Range Sum Query - Immutable
# Easy
#
# Given an integer array nums, handle multiple queries of the following type:
# - Calculate the sum of the elements of nums between indices left and right
#   inclusive where left <= right.
#
# Implement the NumArray class:
# - NumArray(int[] nums) Initializes the object with the integer array nums.
# - int sumRange(int left, int right) Returns the sum of the elements of nums
#   between indices left and right inclusive (i.e. nums[left] + nums[left + 1]
#   + ... + nums[right]).

class NumArray
  def initialize(nums)
    @sums = Array.new(nums.size + 1, 0)
    (0...nums.size).each do |i|
      @sums[i + 1] = nums[i] + @sums[i]
    end
  end

  def sum_range(left, right)
    @sums[right + 1] - @sums[left]
  end
end

a = NumArray.new([-2, 0, 3, -5, 2, -1])
puts a.sum_range(0, 2)  # 1
puts a.sum_range(2, 5)  # -1
puts a.sum_range(0, 5)  # -3
