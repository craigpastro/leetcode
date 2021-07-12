# 110. Balanced Binary Tree
# Easy
#
# Given a binary tree, determine if it is height-balanced.
#
# For this problem, a height-balanced binary tree is defined as:
#
#   a binary tree in which the left and right subtrees of every node differ in
#   height by no more than 1.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def is_balanced(root)
  _, b = helper(root)
  b
end

def helper(node)
  return [-1, true] if node.nil?

  depth1, ok1 = helper(node.left)
  depth2, ok2 = helper(node.right)

  return [-1, false] if !ok1 || !ok2 || (depth1 - depth2).abs > 1

  [[depth1, depth2].max + 1, true]
end
