# 98. Validate Binary Search Tree
# Medium
#
# Given the root of a binary tree, determine if it is a valid binary search
# tree (BST).
#
# A valid BST is defined as follows:
# - The left subtree of a node contains only nodes with keys less than the
#   node's key.
# - The right subtree of a node contains only nodes with keys greater than the
#   node's key.
# - Both the left and right subtrees must also be binary search trees.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def is_valid_bst(root)
  return true if root.nil?

  a = in_order(root)
  a == a.uniq.sort
end

def in_order(root)
  return [] if root.nil?

  in_order(root.left).concat([root.val]).concat(in_order(root.right))
end
