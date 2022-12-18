"""
# 617. Merge Two Binary Trees

Easy

You are given two binary trees root1 and root2.

Imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not. You need to merge the two trees into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of the new tree.

Return the merged tree.

Note: The merging process must start from the root nodes of both trees.
"""


class Solution:
    def mergeTrees(
        self, root1: Optional[TreeNode], root2: Optional[TreeNode]
    ) -> Optional[TreeNode]:
        if root1 is None and root2 is None:
            return None

        val = 0
        root1_left = None
        root1_right = None
        root2_left = None
        root2_right = None

        if root1 is not None:
            val += root1.val
            root1_left = root1.left
            root1_right = root1.right

        if root2 is not None:
            val += root2.val
            root2_left = root2.left
            root2_right = root2.right

        return TreeNode(
            val,
            self.mergeTrees(root1_left, root2_left),
            self.mergeTrees(root1_right, root2_right),
        )


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
