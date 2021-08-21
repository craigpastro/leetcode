# 409. Longest Palindrome
# Easy
#
# Given a string s which consists of lowercase or uppercase letters, return
# the length of the longest palindrome that can be built with those letters.
#
# Letters are case sensitive, for example, "Aa" is not considered a
# palindrome here.

def longest_palindrome(s)
  res = 0
  rem = 0

  counts(s).each do |c|
    if c.even?
      res += c
    else
      res += (c - 1)
      rem = 1
    end
  end

  res + rem
end

def counts(s)
  f = Hash.new(0)
  s.each_char do |c|
    f[c] += 1
  end
  f.values
end
