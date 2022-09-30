"""
589. N-ary Tree Preorder Traversal
Easy

Given the root of an n-ary tree, return the preorder traversal of its nodes'
values.
"""


class Solution:
    def preorder(self, root: "Node") -> List[int]:
        if root is None:
            return []

        res = [root.val]
        for child in root.children:
            res.extend(self.preorder(child))

        return res


class Node:
    def __init__(self, val=None, children=None):
        self.val = val
        self.children = children
