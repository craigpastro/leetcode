# 231. Power of Two
# Easy
#
# Given an integer n, return true if it is a power of two. Otherwise, return
# false.
#
# An integer n is a power of two, if there exists an integer x such that
# n == 2x.

def is_power_of_two(n)
  return false if n.negative?

  n.to_s(2).chars.count('1') == 1
end
