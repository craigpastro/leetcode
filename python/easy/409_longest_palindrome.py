"""
409. Longest Palindrome
Easy

Given a string s which consists of lowercase or uppercase letters, return
the length of the longest palindrome that can be built with those letters.

Letters are case sensitive, for example, "Aa" is not considered a
palindrome here.
"""


class Solution:
    def longestPalindrome(self, s: str) -> int:
        d = {}
        for c in s:
            d[c] = d.get(c, 0) + 1

        res = 0
        rem = 0
        for v in d.values():
            if v % 2 == 0:
                res += v
            else:
                res += v - 1
                rem = 1

        return res + rem
