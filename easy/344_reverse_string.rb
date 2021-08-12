# 344. Reverse String
# Easy
#
# Write a function that reverses a string. The input string is given as an
# array of characters s.

def reverse_string(s)
  s.reverse!
end

s = %w[h e l l o]
reverse_string(s)
p s
