# 173. Binary Search Tree Iterator

Medium

Implement the `BSTIterator` class that represents an iterator over the in-order traversal of a binary search tree (BST):

- `BSTIterator(TreeNode root)` Initializes an object of the BSTIterator class. The root of the BST is given as part of the constructor. The pointer should be initialized to a non-existent number smaller than any element in the BST.
- `boolean hasNext()` Returns true if there exists a number in the traversal to the right of the pointer, otherwise returns false.
- `int next()` Moves the pointer to the right, then returns the number at the pointer.

Notice that by initializing the pointer to a non-existent smallest number, the first call to `next()` will return the smallest element in the BST.

You may assume that `next()` calls will always be valid. That is, there will be at least a next number in the in-order traversal when `next()` is called.

```python
class BSTIterator:
    def __init__(self, root: Optional[TreeNode]):
        self.elements = self.reverse_flatten(root)

    def next(self) -> int:
        return self.elements.pop()

    def hasNext(self) -> bool:
        if len(self.elements) > 0:
            return True

        return False

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
