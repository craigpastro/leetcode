# 111. Minimum Depth of Binary Tree

Easy

Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root
node down to the nearest leaf node.

Note: A leaf is a node with no children.

```python
max_depth = 100000


class Solution:
    def minDepth(self, root: Optional[TreeNode]) -> int:
        if root is None:
            return 0

        left = max_depth
        if root.left is not None:
            left = self.minDepth(root.left)

        right = max_depth
        if root.right is not None:
            right = self.minDepth(root.right)

        res = min(left, right) + 1
        if res >= max_depth:
            return 1

        return res


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
