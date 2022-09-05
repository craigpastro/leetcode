# 205. Isomorphic Strings
# Easy
#
# Given two strings s and t, determine if they are isomorphic.
#
# Two strings s and t are isomorphic if the characters in s can be replaced to
# get t.
#
# All occurrences of a character must be replaced with another character while
# preserving the order of characters. No two characters may map to the same
# character, but a character may map to itself.

def is_isomorphic(s, t)
  h = "\u2010" # hyphen unicode char
  s.gsub! '-', h
  t.gsub! '-', h
  s.tr(s, t) == t && t.tr(t, s) == s
end

s = "qwertyuiop[]asdfghjkl;'\\zxcvbnm,./"
t = "',.pyfgcrl/=aoeuidhtns-\\;qjkxbmwvz"
puts is_isomorphic(s, t)  # true
