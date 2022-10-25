"""
543. Diameter of Binary Tree
Easy

Given the root of a binary tree, return the length of the diameter of the
tree.

The diameter of a binary tree is the length of the longest path between any
two nodes in a tree. This path may or may not pass through the root.

The length of a path between two nodes is represented by the number of edges
between them.
"""


class Solution:
    def diameterOfBinaryTree(self, root: Optional[TreeNode]) -> int:
        if root is None:
            return 0

        return self.helper(root)[1]

    def helper(self, root: Optional[TreeNode]) -> (int, int):
        if root is None:
            return 0, 0

        lh, ld = self.helper(root.left)
        rh, rd = self.helper(root.right)

        return 1 + max(lh, rh), max(ld, rd, lh + rh)
