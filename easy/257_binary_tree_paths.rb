# 257. Binary Tree Paths
# Easy
#
# Given the root of a binary tree, return all root-to-leaf paths in any order.
#
# A leaf is a node with no children.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def binary_tree_paths(root)
  return nil if root.nil?

  helper(root, [])
end

def helper(node, path)
  path = path.empty? ? [node.val.to_s] : path.map { |p| "#{p}->#{node.val}" }

  if !node.left.nil? || !node.right.nil?
    left = node.left.nil? ? [] : helper(node.left, path)
    right = node.right.nil? ? [] : helper(node.right, path)
    left.concat(right)
  else
    path
  end
end
