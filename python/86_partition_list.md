# 86. Partition List

Medium

Given the head of a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.

You should preserve the original relative order of the nodes in each of the two partitions.

```python
class Solution:
    def partition(self, head: Optional[ListNode], x: int) -> Optional[ListNode]:
        if head is None:
            return None

        ltHead = ListNode(-1)
        lt = ltHead

        gtHead = ListNode(-1)
        gt = gtHead

        curr = head
        while curr is not None:
            if curr.val < x:
                lt.next = curr
                lt = lt.next
            else:
                gt.next = curr
                gt = gt.next

            curr = curr.next

        gt.next = None
        lt.next = gtHead.next

        return ltHead.next


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```