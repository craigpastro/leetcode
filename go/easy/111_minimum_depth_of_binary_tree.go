// 111. Minimum Depth of Binary Tree
// Easy
//
// Given a binary tree, find its minimum depth.
//
// The minimum depth is the number of nodes along the shortest path from the
// root node down to the nearest leaf node.
//
// Note: A leaf is a node with no children.
package main

import "math"

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func minDepth(root *TreeNode) int {
	if root == nil {
		return 0
	}

	left := math.MaxInt32
	if root.Left != nil {
		left = minDepth(root.Left)
	}

	right := math.MaxInt32
	if root.Right != nil {
		right = minDepth(root.Right)
	}

	depth := min(left, right)
	if depth == math.MaxInt32 {
		// root is a leaf
		return 1
	}

	return depth + 1
}

func min(x, y int) int {
	if x <= y {
		return x
	}
	return y
}
