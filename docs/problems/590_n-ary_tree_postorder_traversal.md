# 590. N-ary Tree Postorder Traversal

Easy

Given the root of an n-ary tree, return the postorder traversal of its nodes' values.

```python
class Solution:
    def postorder(self, root: "Node") -> List[int]:
        if root is None:
            return []

        res = []
        for child in root.children:
            res.extend(self.postorder(child))

        return res + [root.val]


class Node:
    def __init__(self, val=None, children=None):
        self.val = val
        self.children = children
```
