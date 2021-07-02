# 58. Length of Last Word
# Easy
#
# Given a string s consists of some words separated by spaces, return the length of the last word in the string. If the last word does not exist, return 0.
#
# A word is a maximal substring consisting of non-space characters only.

def length_of_last_word(s)
  w = s.split.last
  if w.nil?
    0
  else
    w.size
  end
end

puts length_of_last_word('Hello World') # 5
puts length_of_last_word(' ') # 0
