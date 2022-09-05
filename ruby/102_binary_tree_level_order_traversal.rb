# 102. Binary Tree Level Order Traversal
# Medium
#
# Given the root of a binary tree, return the level order traversal of its
# nodes' values. (i.e., from left to right, level by level).

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
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

t = TreeNode.new(3, TreeNode.new(9), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))
p level_order(t) # [[3], [9, 20], [15, 7]]
