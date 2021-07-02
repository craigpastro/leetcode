# 69. Sqrt(x)
# Easy
#
# Given a non-negative integer x, compute and return the square root of x.
#
# Since the return type is an integer, the decimal digits are truncated, and
# only the integer part of the result is returned.
#
# Note: You are not allowed to use any built-in exponent function or operator,
# such as pow(x, 0.5) or x ** 0.5.

def my_sqrt(x)
  x0 = x >> 1
  return x if x0.zero?

  x1 = (x0 + x / x0) >> 1

  while x1 < x0
    x0 = x1
    x1 = (x0 + x / x0) >> 1
  end

  x0
end

puts my_sqrt(1)  # 1
puts my_sqrt(4)  # 2
puts my_sqrt(8)  # 2
