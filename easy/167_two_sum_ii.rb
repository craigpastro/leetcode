# 167. Two Sum II - Input array is sorted
# Easy
#
# Given an array of integers numbers that is already sorted in non-decreasing
# order, find two numbers such that they add up to a specific target number.
#
# Return the indices of the two numbers (1-indexed) as an integer array answer
# of size 2, where 1 <= answer[0] < answer[1] <= numbers.length.
#
# The tests are generated such that there is exactly one solution. You may not
# use the same element twice.

def two_sum(numbers, target)
  h = {}
  numbers.each.with_index do |n, j|
    i = h[target - n]
    return [i + 1, j + 1] unless i.nil?

    h[n] = j
  end
end

p two_sum([2, 7, 11, 15], 9) # [1, 2]
p two_sum([2, 3, 4], 6) # [1, 3]
p two_sum([-1, 0], -1)      # [1, 2]
