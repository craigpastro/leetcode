# 83. Remove Duplicates from Sorted List

Easy

Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

```python
class Solution:
    def deleteDuplicates(self, head: Optional[ListNode]) -> Optional[ListNode]:
        prev = head
        curr = head

        while curr is not None:
            while curr is not None and prev.val == curr.val:
                curr = curr.next

            prev.next = curr
            prev = prev.next

        return head


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```