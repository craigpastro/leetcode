# 237. Delete Node in a Linked List
# Easy
#
# Write a function to delete a node in a singly-linked list. You will not
# be given access to the head of the list, instead you will be given access
# to the node to be deleted directly.
#
# It is guaranteed that the node to be deleted is not a tail node in the
# list.

class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

def delete_node(node)
  prev = node
  cur = node.next
  prev.val = cur.val

  while cur.next
    cur = cur.next
    prev = prev.next
    prev.val = cur.val
  end

  prev.next = nil
end
