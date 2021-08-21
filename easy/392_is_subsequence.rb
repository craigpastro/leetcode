# 392. Is Subsequence
# Easy
#
# Given two strings s and t, return true if s is a subsequence of t, or false
# otherwise.
#
# A subsequence of a string is a new string that is formed from the original
# string by deleting some (can be none) of the characters without disturbing
# the relative positions of the remaining characters. (i.e., "ace" is a
# subsequence of "abcde" while "aec" is not).

def is_subsequence(s, t)
  s = s.chars

  t.each_char do |c|
    s.shift if s.first == c
  end

  s.empty?
end
