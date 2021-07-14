# 169. Majority Element
# Easy
#
# Given an array nums of size n, return the majority element.
#
# The majority element is the element that appears more than floor(n/2)
# times. You may assume that the majority element always exists in the array.

def majority_element(nums)
  majority = nums.size / 2
  h = Hash.new(0)
  nums.each do |n|
    h[n] += 1
    return n if h[n] > majority
  end
end

puts majority_element([3, 2, 3])              # 3
puts majority_element([2, 2, 1, 1, 1, 2, 2])  # 2
