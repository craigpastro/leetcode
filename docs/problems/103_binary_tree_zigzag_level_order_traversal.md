# 103. Binary Tree Zigzag Level Order Traversal

Medium

Given the root of a binary tree, return the zigzag level order traversal of its nodes' values. (i.e., from left to right, then right to left for the next level and alternate between).

```python
from collections import deque


class Solution:
    def zigzagLevelOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        if root is None:
            return None

        res = []
        queue = deque([root])
        reverse = False

        while len(queue) > 0:
            level = []
            for _ in range(len(queue)):
                curr = queue.popleft()

                level.append(curr.val)
                if curr.left is not None:
                    queue.append(curr.left)
                if curr.right is not None:
                    queue.append(curr.right)

            if reverse:
                level.reverse()

            res.append(level)
            reverse = not reverse

        return res


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
```
