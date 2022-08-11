"""
257. Binary Tree Paths
Easy

Given the root of a binary tree, return all root-to-leaf paths in any order.

A leaf is a node with no children.
"""


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


class Solution:
    def binaryTreePaths(self, root: Optional[TreeNode]) -> List[str]:
        if root is None:
            return []

        return helper(root, [])


def helper(root, paths):
    if len(paths) == 0:
        new_paths = [str(root.val)]
    else:
        new_paths = [p + f"->{root.val}" for p in paths]

    if root.left is None and root.right is None:
        return new_paths

    left = []
    if root.left is not None:
        left = helper(root.left, new_paths)

    right = []
    if root.right is not None:
        right = helper(root.right, new_paths)

    return left + right
