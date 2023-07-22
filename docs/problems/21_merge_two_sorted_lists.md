# 21. Merge Two Sorted Lists

Easy

Merge two sorted linked lists and return it as a sorted list. The list should be
made by splicing together the nodes of the first two lists.

## Solution

```python
class Solution:
    def mergeTwoLists(
        self, list1: Optional[ListNode], list2: Optional[ListNode]
    ) -> Optional[ListNode]:
        if list1 is None:
            return list2

        if list2 is None:
            return list1

        if list1.val <= list2.val:
            list1.next = self.mergeTwoLists(list1.next, list2)
            return list1
        else:
            list2.next = self.mergeTwoLists(list1, list2.next)
            return list2


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```
