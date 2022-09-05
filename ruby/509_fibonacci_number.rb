# 509. Fibonacci Number
# Easy
#
# The Fibonacci numbers, commonly denoted F(n) form a sequence, called the
# Fibonacci sequence, such that each number is the sum of the two preceding
# ones, starting from 0 and 1. That is,
#
# F(0) = 0, F(1) = 1
# F(n) = F(n - 1) + F(n - 2), for n > 1.
#
# Given n, calculate F(n).

def fib(n)
  a = 0
  b = 1
  return a if n.zero?
  return b if n == 1

  (2..n).each do
    a, b = [b, a + b]
  end
  b
end

puts fib(2) # 1
puts fib(3) # 2
puts fib(4) # 3
