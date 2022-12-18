"""
# 501. Find Mode in Binary Search Tree

Easy

Given the root of a binary search tree (BST) with duplicates, return all the mode(s) (i.e., the most frequently occurred element) in it.

If the tree has more than one mode, return them in any order.

Assume a BST is defined as follows:
- The left subtree of a node contains only nodes with keys less than or equal to the node's key.
- The right subtree of a node contains only nodes with keys greater than or equal to the node's key.
- Both the left and right subtrees must also be binary search trees.
"""


class Solution:
    def findMode(self, root: Optional[TreeNode]) -> List[int]:
        if root is None:
            return []

        d = {}
        stack = [root]

        while len(stack) > 0:
            node = stack.pop()
            d[node.val] = d.get(node.val, 0) + 1

            if node.left is not None:
                stack.append(node.left)
            if node.right is not None:
                stack.append(node.right)

        m = max(d.values())

        return [k for k, v in d.items() if v == m]


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
