# 2. Add Two Numbers

[Link](https://leetcode.com/problems/add-two-numbers/)

Medium

You are given two non-empty linked lists representing two non-negative integers.
The digits are stored in reverse order, and each of their nodes contains a
single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the
number 0 itself.

## Solution

```python
class Solution:
    def addTwoNumbers(
        self, l1: Optional[ListNode], l2: Optional[ListNode]
    ) -> Optional[ListNode]:
        return self.add_two_numbers_with_carry(l1, l2, 0)

    def add_two_numbers_with_carry(
        self, l1: Optional[ListNode], l2: Optional[ListNode], carry: int
    ) -> Optional[ListNode]:
        if l1 is None and l2 is None:
            if carry > 0:
                return ListNode(carry)
        elif l1 is None:
            v = l2.val + carry
            return ListNode(v % 10, add_two_numbers_with_carry(None, l2.next, v // 10))
        elif l2 is None:
            v = l1.val + carry
            return ListNode(v % 10, add_two_numbers_with_carry(l1.next, None, v // 10))
        else:
            v = l1.val + l2.val + carry
            return ListNode(
                v % 10, add_two_numbers_with_carry(l1.next, l2.next, v // 10)
            )


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```
