# 103. Binary Tree Zigzag Level Order Traversal
# Medium
#
# Given the root of a binary tree, return the zigzag level order traversal of
# its nodes' values. (i.e., from left to right, then right to left for the
# next level and alternate between).

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def zigzag_level_order(root)
  return [] if root.nil?

  res = []
  queue = [root]
  reverse = false

  until queue.empty?
    level = []

    (0...queue.size).each do |_|
      cur = queue.shift
      level << cur.val
      queue << cur.left unless cur.left.nil?
      queue << cur.right unless cur.right.nil?
    end

    res << (reverse ? level.reverse : level)
    reverse = !reverse
  end

  res
end

t = TreeNode.new(3, TreeNode.new(9), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))
p zigzag_level_order(t) # [[3], [20, 9], [15, 7]]
