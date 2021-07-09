# 112. Path Sum
# Easy
#
# Given the root of a binary tree and an integer targetSum, return true if the
# tree has a root-to-leaf path such that adding up all the values along the
# path equals targetSum.
#
# A leaf is a node with no children.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def has_path_sum(root, target_sum)
  if root.nil?
    false
  elsif root.left.nil? && root.right.nil? # is a leaf
    root.val == target_sum
  else
    has_path_sum(root.left, target_sum - root.val) || has_path_sum(root.right, target_sum - root.val)
  end
end
