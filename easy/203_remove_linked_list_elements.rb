# 203. Remove Linked List Elements
# Easy
#
# Given the head of a linked list and an integer val, remove all the nodes
# of the linked list that has Node.val == val, and return the new head.

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def remove_elements(head, val)
  return nil if head.nil?

  head = head.next while head && head.val == val

  return nil if head.nil?

  prev = head
  cur = head.next
  while cur
    if cur.val == val
      prev.next = cur.next
      cur.next = nil
      cur = prev.next
    else
      cur = cur.next
      prev = prev.next
    end
  end

  head
end
