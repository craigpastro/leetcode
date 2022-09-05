# 100. Same Tree
# Easy
#
# Given the roots of two binary trees p and q, write a function to check if
# they are the same or not.
#
# Two binary trees are considered the same if they are structurally
# identical, and the nodes have the same value.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def is_same_tree(p, q)
  if p.nil? && q.nil?
    true
  elsif p.nil? || q.nil?
    false
  else
    p.val == q.val && is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
  end
end
