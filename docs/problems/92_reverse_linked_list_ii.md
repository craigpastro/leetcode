# 92. Reverse Linked List II

Medium

Given the `head` of a singly linked list and two integers `left` and `right`
where `left <= right`, reverse the nodes of the list from position `left` to
position `right`, and return the reversed list.

```python
class Solution:
    def reverseBetween(
        self, head: Optional[ListNode], left: int, right: int
    ) -> Optional[ListNode]:
        if left == right:
            return head

        curr = head
        prev = None

        i = 1
        while i < left:
            prev = curr
            curr = curr.next
            i += 1

        rtail = curr
        rhead = None

        while i <= right:
            temp = curr.next
            curr.next = rhead
            rhead = curr
            curr = temp
            i += 1

        if prev is not None:
            prev.next = rhead
        else:
            head = rhead

        rtail.next = curr

        return head


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```
