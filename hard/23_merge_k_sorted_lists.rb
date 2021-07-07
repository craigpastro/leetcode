# 23. Merge k Sorted Lists
# Hard
#
# You are given an array of k linked-lists lists, each linked-list is sorted
# in ascending order.
#
# Merge all the linked-lists into one sorted linked-list and return it.

def merge_k_lists(lists)
  lists.filter! { |list| !list.nil? }

  a = []
  lists.each do |list|
    a.concat(to_array(list))
  end

  to_list(a.sort!)
end

def to_array(head)
  res = []

  until head.nil?
    res << head.val
    head = head.next
  end

  res
end

def to_list(arr)
  return nil if arr.empty?

  head = ListNode.new(arr[0])
  cur = head

  arr[1..].each do |a|
    cur.next = ListNode.new(a)
    cur = cur.next
  end

  head
end
