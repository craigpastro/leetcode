# 101. Symmetric Tree

Easy

Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

```python
class Solution:
    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        return self.helper(root.left, root.right)

    def helper(self, left: Optional[TreeNode], right: Optional[TreeNode]) -> bool:
        if left is None and right is None:
            return True
        if left is None or right is None:
            return False

        return (
            left.val == right.val
            and self.helper(left.left, right.right)
            and self.helper(left.right, right.left)
        )


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
