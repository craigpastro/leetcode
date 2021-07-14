# 39. Combination Sum
# Medium
#
# Given an array of distinct integers candidates and a target integer
# target, return a list of all unique combinations of candidates where
# the chosen numbers sum to target. You may return the combinations in
# any order.
#
# The same number may be chosen from candidates an unlimited number of
# times. Two combinations are unique if the frequency of at least one of
# the chosen numbers is different.
#
# It is guaranteed that the number of unique combinations that sum up to
# target is less than 150 combinations for the given input.

def combination_sum(candidates, target)
  helper(candidates.sort!, target, [])
end

def helper(candidates, target, res)
  return [res] if target.zero?
  return [] if candidates.empty?

  x = candidates[0]
  return [] if x > target

  helper(candidates, target - x, res + [x]).concat(helper(candidates[1..], target, res))
end

p combination_sum([2, 3, 6, 7], 7)
p combination_sum([2, 3, 5], 8)
p combination_sum([2], 1)
p combination_sum([1], 1)
p combination_sum([1], 2)
