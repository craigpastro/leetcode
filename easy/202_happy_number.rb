# 202. Happy Number
# Easy
#
# Write an algorithm to determine if a number n is happy.
#
# A happy number is a number defined by the following process:
# - Starting with any positive integer, replace the number by the sum of the
#   squares of its digits.
# - Repeat the process until the number equals 1 (where it will stay), or it
#   loops endlessly in a cycle which does not include 1.
# - Those numbers for which this process ends in 1 are happy.
#
# Return true if n is a happy number, and false if not.

def is_happy(n)
  seen = { n => true }

  while n != 1
    n = n.digits.sum { |x| x**2 }
    return false if seen.has_key?(n)

    seen[n] = true
  end

  true
end

puts is_happy(19)  # true
puts is_happy(2)   # false
