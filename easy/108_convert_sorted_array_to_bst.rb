# 108. Convert Sorted Array to Binary Search Tree
# Easy
#
# Given an integer array nums where the elements are sorted in ascending
# order, convert it to a height-balanced binary search tree.
#
# A height-balanced binary tree is a binary tree in which the depth of the
# two subtrees of every node never differs by more than one.

def sorted_array_to_bst(nums)
  if nums.nil? || nums.size.zero?
    nil
  elsif nums.size == 1
    TreeNode.new(nums.pop, nil, nil)
  else
    m = nums.size / 2
    TreeNode.new(nums[m], sorted_array_to_bst(nums[0...m]), sorted_array_to_bst(nums[m + 1..]))
  end
end
