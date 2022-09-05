# 235. Lowest Common Ancestor of a Binary Search Tree
# Easy
#
# Given a binary search tree (BST), find the lowest common ancestor (LCA) of
# two given nodes in the BST.
#
# According to the definition of LCA on Wikipedia: "The lowest common ancestor
# is defined between two nodes p and q as the lowest node in T that has both p
# and q as descendants (where we allow a node to be a descendant of itself)."

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

def lowest_common_ancestor(root, p, q)
  if root.val > [p.val, q.val].max
    lowest_common_ancestor(root.left, p, q)
  elsif root.val < [p.val, q.val].min
    lowest_common_ancestor(root.right, p, q)
  else
    root
  end
end
