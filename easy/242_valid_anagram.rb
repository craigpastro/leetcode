# 242. Valid Anagram
# Easy
#
# Given two strings s and t, return true if t is an anagram of s, and false
# otherwise.

def is_anagram(s, t)
  freq(s) == freq(t)
end

def freq(s)
  h = Hash.new(0)
  s.each_char { |c| h[c] += 1 }
  h
end

puts is_anagram('anagram', 'nagaram') # true
puts is_anagram('rat', 'car') # false
