"""
226. Invert Binary Tree
Easy

Given the root of a binary tree, invert the tree, and return its root.
"""


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


class Solution:
    def invertTree(self, root: Optional[TreeNode]) -> Optional[TreeNode]:
        if root is None:
            return None

        return TreeNode(
            root.val, self.invertTree(root.right), self.invertTree(root.left)
        )
