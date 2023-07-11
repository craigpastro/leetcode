# 110. Balanced Binary Tree

Easy

Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as a binary tree in
which the left and right subtrees of every node differ in height by no more
than 1.

```python
class Solution:
    def isBalanced(self, root: Optional[TreeNode]) -> bool:
        _, ok = self.helper(root)
        return ok


    def helper(self, root: Optional[TreeNode]) -> Tuple[int, bool]:
        if root is None:
            return -1, True

        depth1, ok1 = self.helper(root.left)
        depth2, ok2 = self.helper(root.right)

        if not ok1 or not ok2 or abs(depth1 - depth2) > 1:
            return -1, False

        return max(depth1, depth2) + 1, True


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
