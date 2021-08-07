# 107. Binary Tree Level Order Traversal II
# Medium
#
# Given the root of a binary tree, return the bottom-up level order traversal
# of its nodes' values. (i.e., from left to right, level by level from leaf
# to root).

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def level_order_bottom(root)
  level_order(root).reverse
end

def level_order(root)
  return [] if root.nil?

  res = []
  queue = [root]

  until queue.empty?
    level = []
    (0...queue.size).each do |_|
      cur = queue.shift
      level << cur.val
      queue << cur.left unless cur.left.nil?
      queue << cur.right unless cur.right.nil?
    end
    res << level
  end

  res
end
