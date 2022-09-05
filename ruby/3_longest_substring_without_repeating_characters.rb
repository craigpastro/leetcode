# 3. Longest Substring Without Repeating Characters
#
# Given a string s, find the length of the longest substring without
# repeating characters.

def length_of_longest_substring(s)
  indices = {}
  start = 0
  cur = 0
  max = 0

  s.each_char.with_index do |c, i|
    if indices.has_key?(c) && indices[c] >= start
      start = indices[c] + 1
      max = cur if cur > max
      cur = i - start + 1
    else
      cur += 1
    end

    indices[c] = i
  end

  max = cur if cur > max
  max
end

p length_of_longest_substring('abcabcbb')  # 3
p length_of_longest_substring('bbbbb')     # 1
p length_of_longest_substring('pwwkew')    # 3
p length_of_longest_substring('')          # 0
