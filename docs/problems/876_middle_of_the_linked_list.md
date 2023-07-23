# 876. Middle of the Linked List

Easy

Given the head of a singly linked list, return the middle node of the linked
list.

If there are two middle nodes, return the second middle node.

## Solution

```python
class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        slow = head
        fast = head

        while True:
            if fast.next is None:
                return slow
            if fast.next.next is None:
                return slow.next

            slow = slow.next
            fast = fast.next.next


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```
