# 104. Maximum Depth of Binary Tree

Easy

Given the root of a binary tree, return its maximum depth.

A binary tree's maximum depth is the number of nodes along the longest path from
the root node down to the farthest leaf node.

```python
class Solution:
    def maxDepth(self, root: Optional[TreeNode]) -> int:
        return self.helper(root, 0)

    def helper(self, root, res):
        if root is None:
            return res
        else:
            return max(
                self.helper(root.left, res + 1), self.helper(root.right, res + 1)
            )


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
