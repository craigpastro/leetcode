# 24. Swap Nodes in Pairs
# Medium
#
# Given a linked list, swap every two adjacent nodes and return its head.
# You must solve the problem without modifying the values in the list's
# nodes (i.e., only nodes themselves may be changed.)

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_ = nil)
    @val = val
    @next = next_
  end
end

def swap_pairs(head)
  return nil if head.nil?
  return head if head.next.nil?

  pre = head
  cur = head.next
  nex = swap_pairs(cur.next) unless cur.next.nil?
  pre.next = nex
  cur.next = pre

  cur
end

p swap_pairs(ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4))))) # [2, 1, 4, 3]
p swap_pairs(nil) # []
p swap_pairs(ListNode.new(1)) # [1]
