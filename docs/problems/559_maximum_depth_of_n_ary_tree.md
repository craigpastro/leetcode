# 559. Maximum Depth of N-ary Tree

Easy

Given a n-ary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root
node down to the farthest leaf node.

## Solution

```python
class Solution:
    def maxDepth(self, root: "Node") -> int:
        if root is None:
            return 0

        return self.helper(root, 1)

    def helper(self, root: "Node", depth: int) -> int:
        if len(root.children) == 0:
            return depth

        return max([self.helper(child, depth + 1) for child in root.children])


class Node:
    def __init__(self, val=None, children=None):
        self.val = val
        self.children = children
```
