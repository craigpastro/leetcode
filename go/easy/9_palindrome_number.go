// 9. Palindrome Number
//
// Given an integer x, return true if x is palindrome integer.
//
// An integer is a palindrome when it reads the same backward as forward. For
// example, 121 is palindrome while 123 is not.
package main

func isPalindrome(x int) bool {
	if x < 0 {
		return false
	}

	if x < 10 {
		return true
	}

	original := x
	y := 0

	for x != 0 {
		y *= 10
		y += x % 10
		x = x / 10
	}

	if original-y == 0 {
		return true
	}

	return false
}
