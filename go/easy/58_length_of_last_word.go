// 58. Length of Last Word
// Easy
//
// Given a string s consists of some words separated by spaces, return the length of the last word in the string. If the last word does not exist, return 0.
//
// A word is a maximal substring consisting of non-space characters only.
package main

import "strings"

func lengthOfLastWord(s string) int {
	ss := strings.Split(strings.TrimSpace(s), " ")
	return len(ss[len(ss)-1])
}
