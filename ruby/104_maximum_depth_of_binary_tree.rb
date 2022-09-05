# 104. Maximum Depth of Binary Tree
# Easy
#
# Given the root of a binary tree, return its maximum depth.
#
# A binary tree's maximum depth is the number of nodes along the longest
# path from the root node down to the farthest leaf node.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def max_depth(root)
  helper(root, 0)
end

def helper(root, res)
  if root.nil?
    res
  else
    [helper(root.left, res + 1), helper(root.right, res + 1)].max
  end
end
