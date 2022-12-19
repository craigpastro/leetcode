# 404. Sum of Left Leaves

Easy

Given the root of a binary tree, return the sum of all left leaves.

A leaf is a node with no children. A left leaf is a leaf that is the left child of another node.

```python
class Solution:
    def sumOfLeftLeaves(self, root: Optional[TreeNode]) -> int:
        if root is None:
            return 0

        return helper(root, False)


def helper(root: Optional[TreeNode], is_left: bool) -> int:
    if root is None:
        return 0

    if is_left and root.left is None and root.right is None:
        return root.val

    return helper(root.left, True) + helper(root.right, False)


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
