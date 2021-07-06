# 15. 3Sum
# Medium
#
# Given an integer array nums, return all the triplets
# [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and
# nums[i] + nums[j] + nums[k] == 0.
#
# Notice that the solution set must not contain duplicate triplets.

def three_sum(nums)
  res = {}
  h = Hash.new(0)
  nums.each { |n| h[n] += 1 }

  nums = h.keys
  (0...nums.size).each do |i|
    (i...nums.size).each do |j|
      ni = nums[i]
      nj = nums[j]

      next if ni == nj && h[ni] < 2

      h[ni] -= 1
      h[nj] -= 1

      target = 0 - ni - nj
      if h[target].positive?
        triple = [ni, nj, target].sort
        res[triple] = true
      end

      h[ni] += 1
      h[nj] += 1
    end
  end

  res.keys
end

p three_sum([-1, 0, 1, 2, -1, -4]) # [[-1, -1, 2], [-1, 0, 1]]
p three_sum([])                    # []
p three_sum([0])                   # []
