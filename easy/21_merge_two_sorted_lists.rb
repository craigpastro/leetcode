# 21. Merge Two Sorted Lists
# Easy
#
# Merge two sorted linked lists and return it as a sorted list. The list should be made by splicing together the nodes of the first two lists.

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_ = nil)
    @val = val
    @next = next_
  end
end

def merge_two_lists(l1, l2)
  return l2 if l1.nil?
  return l1 if l2.nil?

  if l1.val <= l2.val
    l1.next = merge_two_lists(l1.next, l2)
    l1
  else
    l2.next = merge_two_lists(l1, l2.next)
    l2
  end
end

l1 = ListNode.new(1, ListNode.new(2, ListNode.new(4)))
l2 = ListNode.new(1, ListNode.new(3, ListNode.new(4)))
p merge_two_lists(l1, l2)
p merge_two_lists(nil, nil) # []
p merge_two_lists(nil, ListNode.new(0)) # [0]
