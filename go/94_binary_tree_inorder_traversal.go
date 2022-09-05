// 94. Binary Tree Inorder Traversal
// Easy
//
// Given the root of a binary tree, return the inorder traversal of its nodes'
// values.
package main

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func inorderTraversal(root *TreeNode) []int {
	if root == nil {
		return []int{}
	}

	var left []int
	if root.Left != nil {
		left = inorderTraversal(root.Left)
	}

	var right []int
	if root.Right != nil {
		right = inorderTraversal(root.Right)
	}

	return append(left, append([]int{root.Val}, right...)...)
}
