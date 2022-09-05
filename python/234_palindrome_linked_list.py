"""
234. Palindrome Linked List
Easy

Given the head of a singly linked list, return true if it is a palindrome.
"""


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution:
    def isPalindrome(self, head: Optional[ListNode]) -> bool:
        a = to_array(head)
        return a == a[::-1]


def to_array(head):
    res = []
    while head is not None:
        res.append(head.val)
        head = head.next

    return res
