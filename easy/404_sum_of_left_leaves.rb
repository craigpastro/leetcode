# 404. Sum of Left Leaves
# Easy
#
# Given the root of a binary tree, return the sum of all left leaves.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def sum_of_left_leaves(root)
  return 0 if root.nil?

  helper(root, false)
end

def helper(node, is_left)
  if node.nil?
    0
  elsif leaf?(node)
    is_left ? node.val : 0
  else
    helper(node.left, true) + helper(node.right, false)
  end
end

def leaf?(node)
  !node.nil? && node.left.nil? && node.right.nil?
end

t = TreeNode.new(3, TreeNode.new(9), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))
puts sum_of_left_leaves(t)  # 24

t = TreeNode.new(1)
puts sum_of_left_leaves(t)  # 0
