"""
203. Remove Linked List Elements
Easy

Given the head of a linked list and an integer val, remove all the nodes
of the linked list that has Node.val == val, and return the new head.
"""


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution:
    def removeElements(self, head: Optional[ListNode], val: int) -> Optional[ListNode]:
        if head is None:
            return None

        while head is not None and head.val == val:
            head = head.next

        if head is None:
            return None

        prev = head
        curr = head.next

        while curr is not None:
            if curr.val == val:
                prev.next = curr.next
                curr = prev.next
            else:
                curr = curr.next
                prev = prev.next

        return head
