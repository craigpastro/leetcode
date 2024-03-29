# 563. Binary Tree Tilt

Easy

Given the root of a binary tree, return the sum of every tree node's tilt.

The tilt of a tree node is the absolute difference between the sum of all left
subtree node values and all right subtree node values. If a node does not have a
left child, then the sum of the left subtree node values is treated as 0. The
rule is similar if the node does not have a right child.

## Solution

```python
class Solution:
    def __init__(self):
        self.tilt = 0

    def findTilt(self, root: Optional[TreeNode]) -> int:
        self.helper(root)
        return self.tilt

    def helper(self, root: Optional[TreeNode]) -> int:
        if root is None:
            return 0

        left = self.helper(root.left)
        right = self.helper(root.right)

        self.tilt += abs(right - left)

        return root.val + left + right


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
