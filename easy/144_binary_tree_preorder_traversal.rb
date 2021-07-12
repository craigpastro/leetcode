# 144. Binary Tree Preorder Traversal
# Easy
#
# Given the root of a binary tree, return the preorder traversal of its
# nodes' values

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def preorder_traversal(root)
  return [] if root.nil?

  res = [root.val]
  res.concat(preorder_traversal(root.left))
  res.concat(preorder_traversal(root.right))
  res
end
