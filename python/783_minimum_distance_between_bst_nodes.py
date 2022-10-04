"""
783. Minimum Distance Between BST Nodes
Easy

Given the root of a Binary Search Tree (BST), return the minimum difference
between the values of any two different nodes in the tree.
"""


class Solution:
    def minDiffInBST(self, root: Optional[TreeNode]) -> int:
        f = self.flatten(root)
        diffs = []
        for i in range(1, len(f)):
            diffs.append(f[i] - f[i - 1])

        return min(diffs)

    def flatten(self, root: Optional[TreeNode]) -> List[int]:
        if root is None:
            return []

        return self.flatten(root.left) + [root.val] + self.flatten(root.right)


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
