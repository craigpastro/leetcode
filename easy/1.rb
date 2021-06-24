# 1. Two Sum
#
# Given an array of integers nums and an integer target, return indices of the
# two numbers such that they add up to target.
#
# You may assume that each input would have exactly one solution, and you may
# not use the same element twice.
#
# You can return the answer in any order.

def two_sum(nums, target)
  h = populate_hash(nums)

  nums.each do |x|
    y = target - x
    if h.key?(y)
      return [h[x].pop, h[y].pop] if x != y
      return h[x][..1] if h[x].size > 1 # && x == y
    end
  end
end

def populate_hash(nums)
  h = Hash.new { |hash, key| hash[key] = [] }
  nums.each.with_index do |x, i|
    h[x] << i
  end
  h
end

p two_sum([2, 7, 11, 15], 9) # [0, 1]
p two_sum([3, 2, 4], 6)      # [1, 2]
p two_sum([3, 3], 6)         # [0, 1]
