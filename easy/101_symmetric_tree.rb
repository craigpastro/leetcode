# 101. Symmetric Tree
# Easy
#
# Given the root of a binary tree, check whether it is a mirror of itself
# (i.e., symmetric around its center).

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def is_symmetric(root)
  helper(root.left, root.right)
end

def helper(left, right)
  if left.nil? && right.nil?
    true
  elsif left.nil? || right.nil?
    false
  else
    left.val == right.val && helper(left.left, right.right) && helper(left.right, right.left)
  end
end
