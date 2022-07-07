# 18. 4Sum
# Medium
#
# Given an array nums of n integers, return an array of all the unique
# quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:
#
# - 0 <= a, b, c, d < n
# - a, b, c, and d are distinct.
# - nums[a] + nums[b] + nums[c] + nums[d] == target
#
# You may return the answer in any order.

def four_sum(nums, target)
  h = Hash.new(0)
  nums.each { |num| h[num] += 1 }
  res = {}

  (0...nums.size - 3).each do |i|
    ((i + 1)...nums.size - 2).each do |j|
      ((j + 1)...nums.size - 1).each do |k|
        nums_l = target - nums[i] - nums[j] - nums[k]
        next unless h.has_key?(nums_l)

        h[nums[i]] -= 1
        h[nums[j]] -= 1
        h[nums[k]] -= 1

        if h[nums[i]] >= 0 && h[nums[j]] >= 0 && h[nums[k]] >= 0 && (h[nums_l]).positive?
          quad = [nums[i], nums[j], nums[k], nums_l].sort
          res[quad] = true
        end

        h[nums[i]] += 1
        h[nums[j]] += 1
        h[nums[k]] += 1
      end
    end
  end

  res.keys
end
