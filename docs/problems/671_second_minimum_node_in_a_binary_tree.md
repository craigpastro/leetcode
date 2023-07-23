# 671. Second Minimum Node In a Binary Tree

Easy

Given a non-empty special binary tree consisting of nodes with the non-negative
value, where each node in this tree has exactly two or zero sub-node. If the
node has two sub-nodes, then this node's value is the smaller value among its
two sub-nodes. More formally, the property root.val = min(root.left.val,
root.right.val) always holds.

Given such a binary tree, you need to output the second minimum value in the set
made of all the nodes' value in the whole tree.

If no such second minimum value exists, output -1 instead.

## Solution

```python
class Solution:
    def findSecondMinimumValue(self, root: Optional[TreeNode]) -> int:
        if root is None:
            return -1

        if root.left is None:  # then root.right is None
            return -1

        return self.helper(root)

    def helper(self, root: TreeNode) -> int:
        if root.left is None:
            return -1

        if root.left.val != root.val:
            left = root.left.val
        else:
            left = self.helper(root.left)

        if root.right.val != root.val:
            right = root.right.val
        else:
            right = self.helper(root.right)

        if left == -1:
            return right
        elif right == -1:
            return left
        else:
            return min(left, right)


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
