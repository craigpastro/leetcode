# 234. Palindrome Linked List
# Easy
#
# Given the head of a singly linked list, return true if it is a palindrome.

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def is_palindrome(head)
  a = to_array(head)
  a == a.reverse
end

def to_array(head)
  res = []
  cur = head
  until cur.nil?
    res << cur.val
    cur = cur.next
  end
  res
end
