# 136. Single Number
# Easy
#
# Given a non-empty array of integers nums, every element appears twice except
# for one. Find that single one.
#
# You must implement a solution with a linear runtime complexity and use only
# constant extra space.

def single_number(nums)
  h = Hash.new(0)
  nums.each { |n| h[n] += 1 }
  h.each { |k, v| return k if v == 1 }
  -1
end

p single_number([2, 2, 1])        # 1
p single_number([4, 1, 2, 1, 2])  # 4
p single_number([1])              # 1
