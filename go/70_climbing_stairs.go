// 70. Climbing Stairs
// Easy
//
// You are climbing a staircase. It takes n steps to reach the top.
//
// Each time you can either climb 1 or 2 steps. In how many distinct ways can
// you climb to the top?
package main

var m map[int]int = map[int]int{1: 1, 2: 2}

func climbStairs(n int) int {
	if n, ok := m[n]; ok {
		return n
	}

	m[n-1] = climbStairs(n - 1)
	m[n-2] = climbStairs(n - 2)

	return m[n-1] + m[n-2]
}
