# 66. Plus One
# Easy
#
# Given a non-empty array of decimal digits representing a non-negative
# integer, increment one to the integer.
#
# The digits are stored such that the most significant digit is at the head
# of the list, and each element in the array contains a single digit.
#
# You may assume the integer does not contain any leading zero, except the
# number 0 itself.

def plus_one(digits)
  (digits.join.to_i + 1).to_s.chars.map(&:to_i)
end

p plus_one([1, 2, 3]) # 124
p plus_one([4, 3, 2, 1]) # 4322
p plus_one([0]) # 1
