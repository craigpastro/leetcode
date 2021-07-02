# 67. Add Binary
# Easy
#
# Given two binary strings a and b, return their sum as a binary string.

def add_binary(a, b)
  (a.to_i(2) + b.to_i(2)).to_s(2)
end

puts add_binary('11', '1')       # 100
puts add_binary('1010', '1011')  # 10101
