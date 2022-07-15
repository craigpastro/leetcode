// 7. Reverse Integer
// Medium
//
// Given a signed 32-bit integer x, return x with its digits reversed. If
// reversing x causes the value to go outside the signed 32-bit integer
// range [-2**31, 2**31 - 1], then return 0.
package main

import "math"

func reverse(x int) int {
	var res int64
	var neg bool
	y := int64(x)

	if y < 0 {
		neg = true
		y = -y
	}

	for y > 0 {
		res = (res * 10) + (y % 10)
		y /= 10
	}

	if neg {
		res = -res
	}

	if res < -(int64(math.Pow(2, 31))-1) || res > int64(math.Pow(2, 31)) {
		return 0
	}

	return int(res)
}
