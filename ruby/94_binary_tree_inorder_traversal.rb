# 94. Binary Tree Inorder Traversal
# Easy
#
# Given the root of a binary tree, return the inorder traversal of its nodes'
# values.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def inorder_traversal(root)
  return [] if root.nil?

  inorder_traversal(root.left).concat([root.val], inorder_traversal(root.right))
end
