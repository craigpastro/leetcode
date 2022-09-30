"""
637. Average of Levels in Binary Tree
Easy

Given the root of a binary tree, return the average value of the nodes on
each level in the form of an array. Answers within 10^(-5) of the actual answer
will be accepted.
"""


class Solution:
    def averageOfLevels(self, root: Optional[TreeNode]) -> List[float]:
        if root is None:
            return []

        res = []
        queue = deque([[root]])

        while len(queue) > 0:
            row = queue.popleft()
            next_row = []
            vals = []

            for node in row:
                if node.left is not None:
                    next_row.append(node.left)
                if node.right is not None:
                    next_row.append(node.right)
                vals.append(node.val)

            res.append(sum(vals) / len(vals))

            if len(next_row) > 0:
                queue.append(next_row)

        return res


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
