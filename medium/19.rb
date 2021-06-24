# 19. Remove Nth Node From End of List
#
# Given the head of a linked list, remove the nth node from the end of the
# list and return its head.

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_ = nil)
    @val = val
    @next = next_
  end
end

def remove_nth_from_end(head, n)
  node = find_node_to_delete(head, n)
  delete_node(head, node)
end

def find_node_to_delete(head, n)
  cur = head

  (0...n).each do
    cur = cur.next
  end

  until cur.nil?
    cur = cur.next
    head = head.next
  end

  head
end

def delete_node(head, node)
  return head.next if head == node

  c1 = head
  c2 = head.next

  while c2 != node
    c1 = c1.next
    c2 = c2.next
  end

  c1.next = c2.next
  head
end

l1 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
p remove_nth_from_end(l1, 2) # [1, 2, 3, 5]

l2 = ListNode.new(1)
p remove_nth_from_end(l2, 1) # []

l3 = ListNode.new(1, ListNode.new(2))
p remove_nth_from_end(l3, 1) # [1]
