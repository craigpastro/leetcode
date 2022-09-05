// 66. Plus One
// Easy
//
// Given a non-empty array of decimal digits representing a non-negative
// integer, increment one to the integer.
//
// The digits are stored such that the most significant digit is at the head
// of the list, and each element in the array contains a single digit.
//
// You may assume the integer does not contain any leading zero, except the
// number 0 itself.
package main

func plusOne(digits []int) []int {
	carry := 1

	for i := len(digits) - 1; i >= 0; i-- {
		digits[i] = digits[i] + carry

		carry = digits[i] / 10
		digits[i] = digits[i] % 10
		
    if carry == 0 {
			return digits
		}
	}

	if carry > 0 {
		digits = append([]int{carry}, digits...)
	}

	return digits
}
