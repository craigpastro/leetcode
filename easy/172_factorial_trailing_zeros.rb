# 172. Factorial Trailing Zeroes
# Easy
#
# Given an integer n, return the number of trailing zeroes in n!.
#
# Follow up: Could you write a solution that works in logarithmic time
# complexity?

def trailing_zeroes(n)
  res = 0

  while n.positive?
    n /= 5
    res += n
  end

  res
end

p trailing_zeroes(3)     # 0
p trailing_zeroes(5)     # 1
p trailing_zeroes(0)     # 0
p trailing_zeroes(1000)  # 249
