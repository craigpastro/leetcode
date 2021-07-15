# 86. Partition List
# Medium
#
# Given the head of a linked list and a value x, partition it such that all
# nodes less than x come before nodes greater than or equal to x.
#
# You should preserve the original relative order of the nodes in each of the
# two partitions.

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def partition(head, x)
  return nil if head.nil?

  tail = ListNode.new
  tail_cur = tail

  while head && head.val >= x
    tail_cur.next = head
    tail_cur = tail_cur.next
    head = head.next
  end

  tail_cur.next = nil
  return tail.next if head.nil?

  prev = head
  cur = head.next

  while cur
    if cur.val < x
      cur = cur.next
      prev = prev.next
    else
      prev.next = cur.next
      tail_cur.next = cur
      tail_cur = tail_cur.next
      cur = cur.next
      tail_cur.next = nil
    end
  end

  prev.next = tail.next
  head
end

l = ListNode.new(4, ListNode.new(3, ListNode.new(2, ListNode.new(5, ListNode.new(2)))))
p partition(l, 3)
