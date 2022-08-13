"""
19. Remove Nth Node From End of List

Given the head of a linked list, remove the nth node from the end of the
list and return its head.
"""


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


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
