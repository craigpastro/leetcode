# 234. Palindrome Linked List

Easy

Given the head of a singly linked list, return true if it is a palindrome.

```python
class Solution:
    def isPalindrome(self, head: Optional[ListNode]) -> bool:
        a = self.to_array(head)
        return a == a[::-1]

    def to_array(self, head: Optional[ListNode]) -> List[int]:
        res = []
        while head is not None:
            res.append(head.val)
            head = head.next

        return res


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
```
