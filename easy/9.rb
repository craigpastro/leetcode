# 9. Palindrome Number
# 
# Given an integer x, return true if x is palindrome integer.
#
# An integer is a palindrome when it reads the same backward as forward. For
# example, 121 is palindrome while 123 is not.

def is_palindrome(x)
  x == x.to_s.reverse.to_i
end

x1 = 121
p is_palindrome(x1) # true

x2 = -121
p is_palindrome(x2) # false

x3 = 10
p is_palindrome(x3) # false

x4 = -101
p is_palindrome(x4) # false
