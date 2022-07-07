// 20. Valid Parentheses
//
// Given a string s containing just the characters '(', ')', '{', '}', '['
// and ']', determine if the input string is valid.
//
// An input string is valid if:
// 1. Open brackets must be closed by the same type of brackets.
// 2. Open brackets must be closed in the correct order.
package main

func isValid(s string) bool {
	var stack []rune
	for _, v := range s {
		if v == '(' || v == '{' || v == '[' {
			stack = append(stack, v)
		}

		if v == ')' || v == '}' || v == ']' {
			n := len(stack) - 1
			if n < 0 || !match(stack[n], v) {
				return false
			}
			stack = stack[:n]
		}
	}

	if len(stack) != 0 {
		return false
	}

	return true
}

func match(l, r rune) bool {
	switch l {
	case '(':
		return r == ')'
	case '{':
		return r == '}'
	case '[':
		return r == ']'
	default:
		return false
	}
}
