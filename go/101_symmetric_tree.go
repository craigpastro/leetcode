// 101. Symmetric Tree
// Easy
//
// Given the root of a binary tree, check whether it is a mirror of itself
// (i.e., symmetric around its center).
package main

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func isSymmetric(root *TreeNode) bool {
	if root == nil {
		return true
	}

	return isSymTree(root.Left, root.Right)
}

func isSymTree(p *TreeNode, q *TreeNode) bool {
	if p == nil && q == nil {
		return true
	}

	if p == nil || q == nil {
		return false
	}

	return p.Val == q.Val && isSymTree(p.Left, q.Right) && isSymTree(p.Right, q.Left)
}
