# 145. Binary Tree Postorder Traversal
# Easy
#
# Given the root of a binary tree, return the postorder traversal of its
# nodes' values.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def postorder_traversal(root)
  return [] if root.nil?

  res = postorder_traversal(root.left)
  res.concat(postorder_traversal(root.right))
  res << root.val
  res
end
