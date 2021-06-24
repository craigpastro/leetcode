# 2. Add Two Numbers
#
# You are given two non-empty linked lists representing two non-negative
# integers. The digits are stored in reverse order, and each of their nodes
# contains a single digit. Add the two numbers and return the sum as a linked
# list.
#
# You may assume the two numbers do not contain any leading zero, except the
# number 0 itself.

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def add_two_numbers(l1, l2)
  add_two_numbers_with_carry(l1, l2, 0)
end

def add_two_numbers_with_carry(l1, l2, carry)
  if l1.nil? && l2.nil?
    ListNode.new(carry) if carry.positive?
  elsif l1.nil?
    val = l2.val + carry
    ListNode.new(val % 10, add_two_numbers_with_carry(nil, l2.next, val / 10))
  elsif l2.nil?
    val = l1.val + carry
    ListNode.new(val % 10, add_two_numbers_with_carry(l1.next, nil, val / 10))
  else
    val = l1.val + l2.val + carry
    ListNode.new(val % 10, add_two_numbers_with_carry(l1.next, l2.next, val / 10))
  end
end

# Test 1
l1 = ListNode.new(2, ListNode.new(4, ListNode.new(3)))
l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))
p add_two_numbers(l1, l2) # ListNode.new(7, ListNode.new(0, ListNode.new(8)))

# Test 2
l1 = ListNode.new(0)
l2 = ListNode.new(0)
p add_two_numbers(l1, l2) # ListNode.new(0)

# Test 2
l1 = ListNode.new(9,
                  ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9)))))))
l2 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9))))
p add_two_numbers(l1, l2)  # [8,9,9,9,0,0,0,1]
