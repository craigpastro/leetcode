# 965. Univalued Binary Tree

Easy

A binary tree is uni-valued if every node in the tree has the same value.

Given the root of a binary tree, return true if the given tree is uni-valued, or
false otherwise.

```python
class Solution:
    def isUnivalTree(self, root: Optional[TreeNode]) -> bool:
        if root is None:
            return True

        return self.helper(root, root.val)

    def helper(self, root: Optional[TreeNode], val: int) -> bool:
        if root is None:
            return True

        if root.val != val:
            return False

        return self.helper(root.left, val) and self.helper(root.right, val)


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
