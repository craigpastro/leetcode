# 160. Intersection of Two Linked Lists
# Easy
#
# Given the heads of two singly linked-lists headA and headB, return the node
# at which the two lists intersect. If the two linked lists have no
# intersection at all, return nil.
#
# It is guaranteed that there are no cycles anywhere in the entire linked
# structure.
#
# Note that the linked lists must retain their original structure after the
# function returns.

def getIntersectionNode(headA, headB)
  h = {}
  cur = headA

  until cur.nil?
    h[cur] = true
    cur = cur.next
  end

  cur = headB
  until cur.nil?
    return cur if h.has_key?(cur)

    cur = cur.next
  end

  nil
end
