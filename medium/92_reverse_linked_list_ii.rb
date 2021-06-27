=begin
92. Reverse Linked List II

Given the head of a singly linked list and two integers left and right
where left <= right, reverse the nodes of the list from position left to
position right, and return the reversed list.
=end

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_ = nil)
    @val = val
    @next = next_
  end
end

def reverse_between(head, left, right)
  return head if left == right

  lp, l, r, rn = get_pointers(head, left, right)

  lp.next = nil unless lp.nil?
  r.next = nil
  new_l = reverse_list(l)
  lp.next = new_l unless lp.nil?
  l.next = rn

  left == 1 ? new_l : head
end

def get_pointers(head, left, right)
  left_prev = nil
  left_cur = nil
  prev = nil
  cur = head
  (1..right).each do |i|
    if i == left
      left_prev = prev
      left_cur = cur
    end
    prev = cur
    cur = cur.next
  end

  [left_prev, left_cur, prev, cur]
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
p reverse_between(l1, 2, 4)
