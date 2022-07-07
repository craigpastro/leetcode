# 14. Longest Common Prefix
# Easy
#
# Write a function to find the longest common prefix string amongst an array of strings.
#
# If there is no common prefix, return an empty string "".

def longest_common_prefix(strs)
  res = []
  l = strs.map(&:size).min

  (0...l).each do |i|
    if strs.map { |s| s[i] }.uniq.size == 1
      res << strs[0][i]
    else
      break
    end
  end

  res.join
end

p longest_common_prefix(%w[flower flow flight])  # "fl"
p longest_common_prefix(%w[dog racecar car])     # ""
