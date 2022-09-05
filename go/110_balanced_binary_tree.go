// 110. Balanced Binary Tree
// Easy
//
// Given a binary tree, determine if it is height-balanced.
//
// For this problem, a height-balanced binary tree is defined as:
//
//   a binary tree in which the left and right subtrees of every node differ in
//   height by no more than 1.
package main

import "math"

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func isBalanced(root *TreeNode) bool {
	_, ok := helper(root)
	return ok
}

// helper is a function which returns the depth of a tree
// and whether it is balanced or not
func helper(root *TreeNode) (float64, bool) {
	if root == nil {
		return -1, true
	}

	depth1, ok1 := helper(root.Left)
	depth2, ok2 := helper(root.Right)

	if !ok1 || !ok2 || math.Abs(depth1-depth2) > 1 {
		return -1, false
	}

	return math.Max(depth1, depth2) + 1, true
}
