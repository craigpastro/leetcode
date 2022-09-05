# 326. Power of Three
# Easy
#
# Given an integer n, return true if it is a power of three. Otherwise,
# return false.
#
# An integer n is a power of three, if there exists an integer x such that
# n == 3^x.

def is_power_of_three(n)
  m = 1
  m *= 3 while m < n
  m == n
end
