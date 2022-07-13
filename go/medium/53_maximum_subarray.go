// 53. Maximum Subarray
// Medium
//
// Given an integer array nums, find the contiguous subarray (containing at
// least one number) which has the largest sum and return its sum.
//
// A subarray is a contiguous part of an array.
package main

func maxSubArray(nums []int) int {
	cur := nums[0]
	max := nums[0]

	for i := 1; i < len(nums); i++ {
		n := nums[i]
		if n > cur+n {
			cur = n
		} else {
			cur += n
		}
		if cur > max {
			max = cur
		}
	}

	return max
}
