"""
# 160. Intersection of Two Linked Lists
Easy

Given the heads of two singly linked-lists headA and headB, return the node at which the two lists intersect. If the two linked lists have no intersection at all, return nil.

It is guaranteed that there are no cycles anywhere in the entire linked structure.

Note that the linked lists must retain their original structure after the function returns.
"""


class ListNode(object):
    def __init__(self, x):
        self.val = x
        self.next = None


class Solution:
    def getIntersectionNode(
        self, headA: ListNode, headB: ListNode
    ) -> Optional[ListNode]:
        s = set()
        curr = headA

        while curr is not None:
            s.add(curr)
            curr = curr.next

        curr = headB
        while curr is not None:
            if curr in s:
                return curr
            curr = curr.next

        return None
