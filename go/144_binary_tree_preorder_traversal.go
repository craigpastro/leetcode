// 144. Binary Tree Preorder Traversal
// Easy
//
// Given the root of a binary tree, return the preorder traversal of its
// nodes' values
package main

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func preorderTraversal(root *TreeNode) []int {
	if root == nil {
		return []int{}
	}

	res := []int{root.Val}
	res = append(res, preorderTraversal(root.Left)...)
	return append(res, preorderTraversal(root.Right)...)
}
