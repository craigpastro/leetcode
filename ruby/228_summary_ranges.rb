# 228. Summary Ranges
# Easy
#
# You are given a sorted unique integer array nums.
#
# Return the smallest sorted list of ranges that cover all the numbers in the
# array exactly. That is, each element of nums is covered by exactly one of
# the ranges, and there is no integer x such that x is in one of the ranges
# but not in nums.
#
# Each range [a,b] in the list should be output as:
# - "a->b" if a != b
# - "a" if a == b

def summary_ranges(nums)
  res = []
  tmp = []

  nums.each do |n|
    if tmp.empty? || tmp.last + 1 == n
      tmp << n
    else
      res << tmp
      tmp = [n]
    end
  end
  res << tmp unless tmp.empty?

  res.map! do |s|
    if s.size == 1
      s.first.to_s
    else
      "#{s.first}->#{s.last}"
    end
  end

  res
end
