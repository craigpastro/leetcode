# 897. Increasing Order Search Tree

Easy

Given the root of a binary search tree, rearrange the tree in in-order so that
the leftmost node in the tree is now the root of the tree, and every node has no
left child and only one right child.

```python
class Solution:
    def increasingBST(self, root: TreeNode) -> TreeNode:
        f = self.reverse_flatten(root)

        root = None
        for num in f:
            root = TreeNode(num, None, root)

        return root

    def reverse_flatten(self, root: Optional[TreeNode]) -> List[int]:
        if root is None:
            return []

        return (
            self.reverse_flatten(root.right)
            + [root.val]
            + self.reverse_flatten(root.left)
        )


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
