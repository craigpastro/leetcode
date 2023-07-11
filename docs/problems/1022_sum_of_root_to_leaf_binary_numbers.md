# 1022. Sum of Root To Leaf Binary Numbers

Easy

You are given the root of a binary tree where each node has a value 0 or 1. Each
root-to-leaf path represents a binary number starting with the most significant
bit.

- For example, if the path is `0 -> 1 -> 1 -> 0 -> 1`, then this could represent
  `01101` in binary, which is 13.

For all leaves in the tree, consider the numbers represented by the path from
the root to that leaf. Return the sum of these numbers.

The test cases are generated so that the answer fits in a 32-bits integer.

```python
class Solution:
    def sumRootToLeaf(self, root: Optional[TreeNode]) -> int:
        if root is None:
            return 0

        return self.helper(root, [])

    def helper(self, root: TreeNode, bnum: List[str]) -> int:
        num = bnum + [str(root.val)]

        if root.left is None and root.right is None:
            return int("".join(num), 2)

        l = 0
        if root.left is not None:
            l = self.helper(root.left, num)

        r = 0
        if root.right is not None:
            r = self.helper(root.right, num)

        return l + r


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
