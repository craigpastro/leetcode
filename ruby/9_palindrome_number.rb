# 9. Palindrome Number
#
# Given an integer x, return true if x is palindrome integer.
#
# An integer is a palindrome when it reads the same backward as forward. For
# example, 121 is palindrome while 123 is not.

def is_palindrome(x)
  x == x.to_s.reverse.to_i
end

p is_palindrome(121)   # true
p is_palindrome(-121)  # false
p is_palindrome(10)    # false
p is_palindrome(-101)  # false
