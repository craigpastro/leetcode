# 24. Swap Nodes in Pairs

Medium

Given a linked list, swap every two adjacent nodes and return its head. You must
solve the problem without modifying the values in the list's nodes (i.e., only
nodes themselves may be changed.)

## Solution

```python
class Solution:
    def swapPairs(self, head: Optional[ListNode]) -> Optional[ListNode]:
        if head is None:
            return None
        if head.next is None:
            return head

        prev = head
        curr = head.next

        next = None
        if curr.next is not None:
            next = self.swapPairs(curr.next)

        prev.next = next
        curr.next = prev

        return curr


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```
