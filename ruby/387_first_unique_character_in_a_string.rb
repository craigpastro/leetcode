# 387. First Unique Character in a String
# Easy
#
# Given a string s, find the first non-repeating character in it and return
# its index. If it does not exist, return -1.

def first_uniq_char(s)
  h = Hash.new(0)
  s = s.chars

  s.each do |c|
    h[c] += 1
  end

  s.each.with_index do |c, i|
    return i if h[c] == 1
  end

  -1
end
