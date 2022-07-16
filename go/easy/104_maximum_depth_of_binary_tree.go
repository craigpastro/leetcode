// 104. Maximum Depth of Binary Tree
// Easy
//
// Given the root of a binary tree, return its maximum depth.
//
// A binary tree's maximum depth is the number of nodes along the longest
// path from the root node down to the farthest leaf node.
package main

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func maxDepth(root *TreeNode) int {
	return helper(root, 0)
}

func helper(root *TreeNode, res int) int {
	if root == nil {
		return res
	}

	leftDepth := helper(root.Left, res+1)
	rightDepth := helper(root.Right, res+1)

	if leftDepth >= rightDepth {
		return leftDepth
	}

	return rightDepth
}
