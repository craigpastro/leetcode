#  342. Power of Four
# Easy
#
# Given an integer n, return true if it is a power of four. Otherwise,
# return false.
#
# An integer n is a power of four, if there exists an integer x such that
# n == 4x.

def is_power_of_four(n)
  m = 1
  m *= 4 while m < n
  m == n
end
