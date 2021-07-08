# 111. Minimum Depth of Binary Tree
# Easy
#
# Given a binary tree, find its minimum depth.
#
# The minimum depth is the number of nodes along the shortest path from the
# root node down to the nearest leaf node.
#
# Note: A leaf is a node with no children.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def min_depth(root)
  return 0 if root.nil?

  left = root.left ? min_depth(root.left) : Float::INFINITY
  right = root.right ? min_depth(root.right) : Float::INFINITY

  res = 1 + [left, right].min
  res == Float::INFINITY ? 1 : res
end
