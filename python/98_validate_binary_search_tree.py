"""
98. Validate Binary Search Tree
Medium

Given the root of a binary tree, determine if it is a valid binary search
tree (BST).

A valid BST is defined as follows:
- The left subtree of a node contains only nodes with keys less than the
  node's key.
- The right subtree of a node contains only nodes with keys greater than the
  node's key.
- Both the left and right subtrees must also be binary search trees.
"""


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


class Solution:
    def isValidBST(self, root: Optional[TreeNode]) -> bool:
        if root is None:
            return True

        tree = in_order(root)
        return tree == sorted(set(tree))


def in_order(root):
    if root is None:
        return []

    return in_order(root.left) + [root.val] + in_order(root.right)
