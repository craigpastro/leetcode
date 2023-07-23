# 872. Leaf-Similar Trees

Easy

Consider all the leaves of a binary tree, from left to right order, the values
of those leaves form a leaf value sequence.

Two binary trees are considered leaf-similar if their leaf value sequence is the
same.

Return true if and only if the two given trees with head nodes root1 and root2
are leaf-similar.

## Solution

```python
class Solution:
    def leafSimilar(self, root1: Optional[TreeNode], root2: Optional[TreeNode]) -> bool:
        return self.leaves(root1) == self.leaves(root2)

    def leaves(self, root: Optional[TreeNode]) -> List[int]:
        if root is None:
            return []

        if root.left is None and root.right is None:
            return [root.val]

        return self.leaves(root.left) + self.leaves(root.right)


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
