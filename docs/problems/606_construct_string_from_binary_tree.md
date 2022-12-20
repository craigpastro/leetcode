# 606. Construct String from Binary Tree

Easy

Given the root of a binary tree, construct a string consisting of parenthesis and integers from a binary tree with the preorder traversal way, and return it.

Omit all the empty parenthesis pairs that do not affect the one-to-one mapping relationship between the string and the original binary tree.

```python
class Solution:
    def tree2str(self, root: Optional[TreeNode]) -> str:
        if root is None:
            return ""

        res = str(root.val)

        left = ""
        if root.left is not None:
            left = "(" + self.tree2str(root.left) + ")"
        elif root.left is None and root.right is not None:
            left = "()"

        right = ""
        if root.right is not None:
            right = "(" + self.tree2str(root.right) + ")"

        return res + left + right


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
