"""
23. Merge k Sorted Lists
Hard

You are given an array of k linked-lists lists, each linked-list is sorted in
ascending order.

Merge all the linked-lists into one sorted linked-list and return it.
"""


class Solution:
    def mergeKLists(self, lists: List[Optional[ListNode]]) -> Optional[ListNode]:
        res = []
        for l in lists:
            res.extend(self.to_array(l))

        res.sort()

        return self.to_list(res)

    def to_array(self, head: ListNode) -> List[int]:
        res = []
        while head is not None:
            res.append(head.val)
            head = head.next

        return res

    def to_list(self, list: List[int]) -> Optional[ListNode]:
        if len(list) == 0:
            return None

        head = ListNode(list[0])
        curr = head
        for v in list[1:]:
            curr.next = ListNode(v)
            curr = curr.next

        return head


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
