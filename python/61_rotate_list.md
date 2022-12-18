# 61. Rotate List

Medium

Given the head of a linked list, rotate the list to the right by `k` places.

```python
class Solution:
    def rotateRight(self, head: Optional[ListNode], k: int) -> Optional[ListNode]:
        if head is None or k == 0:
            return head

        curr = head
        length = 1
        while curr.next is not None:
            length += 1
            curr = curr.next

        k = k % length
        if k == length:
            return head

        curr.next = head  # wrap the list

        # now cut off the end
        target = length - k - 1
        curr = head
        for _ in range(target):
            curr = curr.next

        head = curr.next
        curr.next = None

        return head


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```
