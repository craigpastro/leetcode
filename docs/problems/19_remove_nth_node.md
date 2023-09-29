# 19. Remove Nth Node From End of List

Medium

Given the head of a linked list, remove the nth node from the end of the list
and return its head.

#### Example 1:

```
Input: head = [1,2,3,4,5], n = 2
Output: [1,2,3,5]
```

#### Example 2:

```
Input: head = [1], n = 1
Output: []
```

#### Example 3:

```
Input: head = [1,2], n = 1
Output: [1]
```

#### Constraints:

- The number of nodes in the list is sz.
- 1 <= sz <= 30
- 0 <= Node.val <= 100
- 1 <= n <= sz

Follow up: Could you do this in one pass?

## Solution

```python
class Solution:
    def removeNthFromEnd(self, head: Optional[ListNode], n: int) -> Optional[ListNode]:
        if head is None:
            return None

        l = length(head)

        d = l - n
        if d == 0:
            return head.next

        prev = None
        curr = head
        for _ in range(d):
            prev = curr
            curr = curr.next

        if curr.next is not None:
            prev.next = curr.next
        else:
            prev.next = None

        return head


def length(head: Optional[ListNode]) -> int:
    l = 0
    curr = head
    while curr is not None:
        l += 1
        curr = curr.next
    return l


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```
