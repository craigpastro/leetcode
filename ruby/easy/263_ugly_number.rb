# 263. Ugly Number
# Easy
#
# An ugly number is a positive integer whose prime factors are limited to
# 2, 3, and 5.
#
# Given an integer n, return true if n is an ugly number.

def is_ugly(n)
  return false if n <= 0

  n /= 2 while n.even?
  n /= 3 while (n % 3).zero?
  n /= 5 while (n % 5).zero?

  n == 1
end

puts is_ugly(6)   # true
puts is_ugly(8)   # true
puts is_ugly(14)  # false
puts is_ugly(1)   # true
