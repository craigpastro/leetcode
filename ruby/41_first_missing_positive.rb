# 41. First Missing Positive
# Hard
#
# Given an unsorted integer array nums, find the smallest missing positive
# integer.
#
# You must implement an algorithm that runs in O(n) time and uses constant
# extra space.

def first_missing_positive(nums)
  nums_size = nums.size

  # Get rid of any negatives.
  (0...nums_size).each do |i|
    nums[i] = nums_size + 1 if nums[i] <= 0
  end

  # Fill holes where we can.
  i = 0
  while i < nums_size
    index = nums[i]
    while index.positive? && index <= nums_size
      temp = nums[index - 1]
      nums[index - 1] = -1
      index = temp
    end
    i += 1
  end

  # Find the first hole.
  nums.each.with_index do |n, j|
    return j + 1 if n >= 0
  end

  # No hole.
  nums_size + 1
end

puts first_missing_positive([1, 2, 0])          # 3
puts first_missing_positive([3, 4, -1, 1])      # 2
puts first_missing_positive([7, 8, 9, 11, 12])  # 1
