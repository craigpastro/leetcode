// 145. Binary Tree Postorder Traversal
// Easy
//
// Given the root of a binary tree, return the postorder traversal of its
// nodes' values.
package main

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func postorderTraversal(root *TreeNode) []int {
	if root == nil {
		return []int{}
	}

	res := postorderTraversal(root.Left)
	res = append(res, postorderTraversal(root.Right)...)
	return append(res, root.Val)
}
