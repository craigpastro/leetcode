# 206. Reverse Linked List
#
# Given the head of a singly linked list, reverse the list, and return the reversed list.

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_ = nil)
    @val = val
    @next = next_
  end
end

def reverse_list(head)
  p = nil
  c = head
  n = nil

  until c.nil?
    n = c.next
    c.next = p
    p = c
    c = n
  end

  p
end

l1 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
p reverse_list(l1)

l2 = ListNode.new(1, ListNode.new(2))
p reverse_list(l2)

p reverse_list(nil)
