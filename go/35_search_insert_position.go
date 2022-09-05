// 35. Search Insert Position
// Easy
//
// Given a sorted array of distinct integers and a target value, return the
// index if the target is found. If not, return the index where it would be
// if it were inserted in order.
//
// You must write an algorithm with O(log n) runtime complexity.
package main

func searchInsert(nums []int, target int) int {
	left := 0
	right := len(nums)

	for left < right {
		mid := left + (right-left)/2

		if nums[mid] == target {
			return mid
		}

		if target < nums[mid] {
			right = mid
		} else {
			left = mid + 1
		}
	}

	return right
}
