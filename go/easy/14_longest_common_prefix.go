// 14. Longest Common Prefix
// Easy
//
// Write a function to find the longest common prefix string amongst an array of strings.
//
// If there is no common prefix, return an empty string "".
package main

func longestCommonPrefix(strs []string) string {
	// Find length of the shortest string
	l := len(strs[0])
	for _, s := range strs {
		if len(s) < l {
			l = len(s)
		}
	}

	var res []byte
Loop:
	for i := 0; i < l; i++ {
		t := strs[0][i]
		for _, s := range strs {
			if t != s[i] {
				break Loop
			}
		}
		res = append(res, t)
	}

	return string(res)
}
