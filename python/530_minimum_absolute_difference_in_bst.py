"""
# 530. Minimum Absolute Difference in BST

Easy

Given the root of a Binary Search Tree (BST), return the minimum absolute difference between the values of any two different nodes in the tree.
"""


class Solution:
    def getMinimumDifference(self, root: Optional[TreeNode]) -> int:
        o = self.reverse_inorder(root)
        pairs = zip(o[:-1], o[1:])
        return min([x - y for x, y in pairs])

    def reverse_inorder(self, root: Optional[TreeNode]) -> List[int]:
        if root is None:
            return []

        return (
            self.reverse_inorder(root.right)
            + [root.val]
            + self.reverse_inorder(root.left)
        )


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
