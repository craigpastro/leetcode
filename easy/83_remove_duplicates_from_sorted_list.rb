# 83. Remove Duplicates from Sorted List
# Easy
#
# Given the head of a sorted linked list, delete all duplicates such that
# each element appears only once. Return the linked list sorted as well.

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def delete_duplicates(head)
  prev = head
  cur = head

  until cur.nil?
    cur = cur.next while cur && prev.val == cur.val
    prev.next = cur
    prev = prev.next
  end

  head
end
