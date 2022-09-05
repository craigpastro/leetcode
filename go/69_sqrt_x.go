// 69. Sqrt(x)
// Easy
//
// Given a non-negative integer x, compute and return the square root of x.
//
// Since the return type is an integer, the decimal digits are truncated, and
// only the integer part of the result is returned.
//
// Note: You are not allowed to use any built-in exponent function or operator,
// such as pow(x, 0.5) or x ** 0.5.
package main

// Newton's method
func mySqrt(x int) int {
	if x == 0 || x == 1 {
		return x
	}

	x0 := x >> 1
	x1 := (x0 + x/x0) >> 1

	for x1 < x0 {
		x0 = x1
		x1 = (x0 + x/x0) >> 1
	}

	return x0
}
