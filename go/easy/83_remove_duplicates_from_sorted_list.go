// 83. Remove Duplicates from Sorted List
// Easy
//
// Given the head of a sorted linked list, delete all duplicates such that
// each element appears only once. Return the linked list sorted as well.
package main

type ListNode struct {
	Val  int
	Next *ListNode
}

func deleteDuplicates(head *ListNode) *ListNode {
	prev := head
	curr := head

	for curr != nil {
		for curr != nil && curr.Val == prev.Val {
			curr = curr.Next
		}
		prev.Next = curr
		prev = prev.Next
	}

	return head
}
