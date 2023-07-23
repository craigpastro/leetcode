# 993. Cousins in Binary Tree

Easy

Given the root of a binary tree with unique values and the values of two
different nodes of the tree x and y, return true if the nodes corresponding to
the values x and y in the tree are cousins, or false otherwise.

Two nodes of a binary tree are cousins if they have the same depth with
different parents.

Note that in a binary tree, the root node is at the depth 0, and children of
each depth k node are at the depth k + 1.

#### Example 1

```
Input: root = [1,2,3,4], x = 4, y = 3
Output: false
```

#### Example 2

```
Input: root = [1,2,3,null,4,null,5], x = 5, y = 4
Output: true
```

#### Example 3

```
Input: root = [1,2,3,null,4], x = 2, y = 3
Output: false
```

## Solution

```python
class Solution:
    def isCousins(self, root: Optional[TreeNode], x: int, y: int) -> bool:
        if root is None:
            return False

        if root.val == x or root.val == y:
            return False

        xd, xp = self.find_depth_and_parent(root, x, 0)
        if xd == -1:
            return False

        yd, yp = self.find_depth_and_parent(root, y, 0)

        if xp == yp:
            return False

        if xd == yd:
            return True

        return False

    def find_depth_and_parent(
        self, root: Optional[TreeNode], x: int, depth: int
    ) -> [int, int]:
        if root is None:
            return -1, -1

        if root.left and root.left.val == x:
            return depth + 1, root.val

        if root.right and root.right.val == x:
            return depth + 1, root.val

        [l, p] = self.find_depth_and_parent(root.left, x, depth + 1)
        if l != -1:
            return l, p

        [r, p] = self.find_depth_and_parent(root.right, x, depth + 1)
        if r != -1:
            return r, p

        return -1, -1
```
