# 125. Valid Palindrome
# Easy
#
# Given a string s, determine if it is a palindrome, considering only
# alphanumeric characters and ignoring cases.

def is_palindrome(s)
  s = s.gsub(/[^A-Za-z0-9]/, '').downcase
  s == s.reverse
end

puts is_palindrome('A man, a plan, a canal: Panama') # true
puts is_palindrome('race a car') # false
