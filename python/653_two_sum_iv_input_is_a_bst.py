"""
653. Two Sum IV - Input is a BST
Easy

Given the root of a Binary Search Tree and a target number k, return true if
there exist two elements in the BST such that their sum is equal to the given
target.
"""


class Solution:
    def findTarget(self, root: Optional[TreeNode], k: int) -> bool:
        if root is None:
            return False

        s = helper(root, set())

        for v in s:
            target = k - v
            if target == v:
                continue
            if target in s:
                return True

        return False


# all values in the tree are unique so don't need a frequency
def helper(root: Optional[TreeNode], s: set[int]) -> set[int]:
    if root is None:
        return s

    s.add(root.val)

    if root.left is not None:
        s = helper(root.left, s)

    if root.right is not None:
        s = helper(root.right, s)

    return s


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
