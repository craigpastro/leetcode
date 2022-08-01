"""
101. Symmetric Tree
Easy

Given the root of a binary tree, check whether it is a mirror of itself
(i.e., symmetric around its center).
"""


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


class Solution:
    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        return helper(root.left, root.right)


def helper(left: Optional[TreeNode], right: Optional[TreeNode]) -> bool:
    if left is None and right is None:
        return True
    if left is None or right is None:
        return False

    return (
        left.val == right.val
        and helper(left.left, right.right)
        and helper(left.right, right.left)
    )
