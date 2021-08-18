# 367. Valid Perfect Square
# Easy
#
# Given a positive integer num, write a function which returns True if num is
# a perfect square else False.
#
# Follow up: Do not use any built-in library function such as sqrt.

def is_perfect_square(num)
  acc = 1

  while num.positive?
    num -= acc
    acc += 2
  end

  num.zero?
end
