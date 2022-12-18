"""
206. Reverse Linked List
Easy

Given the head of a singly linked list, reverse the list, and return the reversed list.
"""


class Solution:
    def reverseList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        prev = None
        curr = head
        next = None

        while curr is not None:
            next = curr.next
            curr.next = prev
            prev = curr
            curr = next

        return prev


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
