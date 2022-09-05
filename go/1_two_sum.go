// 1. Two Sum
//
// Given an array of integers nums and an integer target, return indices of the
// two numbers such that they add up to target.
//
// You may assume that each input would have exactly one solution, and you may
// not use the same element twice.
//
// You can return the answer in any order.
package main

func twoSum(nums []int, target int) []int {
	m := populateMap(nums)

	for i, x := range nums {
		y := target - x
		j, ok := m[y]
		if i != j && ok {
			return []int{i, j}
		}
	}

	return nil
}

func populateMap(nums []int) map[int]int {
	res := map[int]int{}
	for i, n := range nums {
		res[n] = i
	}

	return res
}
