# 268. Missing Number
# Easy
#
# Given an array nums containing n distinct numbers in the range [0, n],
# return the only number in the range that is missing from the array.
#
# Follow up: Could you implement a solution using only O(1) extra space
# complexity and O(n) runtime complexity?

def missing_number(nums)
  a = Array.new(nums.size + 1, false)

  nums.each do |n|
    a[n] = true
  end

  a.find_index(false)
end

puts missing_number([3, 0, 1]) # 2
puts missing_number([0, 1]) # 2
puts missing_number([9, 6, 4, 2, 3, 5, 7, 0, 1]) # 8
puts missing_number([0]) # 1
