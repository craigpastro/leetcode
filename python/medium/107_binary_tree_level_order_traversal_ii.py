"""
107. Binary Tree Level Order Traversal II
Medium

Given the root of a binary tree, return the bottom-up level order traversal
of its nodes' values. (i.e., from left to right, level by level from leaf
to root).
"""

from collections import deque


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right


class Solution:
    def levelOrderBottom(self, root: Optional[TreeNode]) -> List[List[int]]:
        if root is None:
            return None

        res = []
        queue = deque([root])

        while len(queue) > 0:
            level = []
            for _ in range(len(queue)):
                curr = queue.popleft()

                level.append(curr.val)
                if curr.left is not None:
                    queue.append(curr.left)
                if curr.right is not None:
                    queue.append(curr.right)

            res.append(level)

        res.reverse()
        return res
