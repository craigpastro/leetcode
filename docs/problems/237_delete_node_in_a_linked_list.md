# 237. Delete Node in a Linked List

Easy

Write a function to delete a node in a singly-linked list. You will not be given access to the head of the list, instead you will be given access to the node to be deleted directly.

It is guaranteed that the node to be deleted is not a tail node in the list.

## Solution

```python
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None


class Solution:
    def deleteNode(self, node):
        prev = node
        curr = node.next
        prev.val = curr.val

        while curr.next is not None:
            curr = curr.next
            prev = prev.next
            prev.val = curr.val

        prev.next = None
```