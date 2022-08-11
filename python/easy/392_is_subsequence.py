"""
392. Is Subsequence
Easy

Given two strings s and t, return true if s is a subsequence of t, or false
otherwise.

A subsequence of a string is a new string that is formed from the original
string by deleting some (can be none) of the characters without disturbing
the relative positions of the remaining characters. (i.e., "ace" is a
subsequence of "abcde" while "aec" is not).
"""


class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        if s == "":
            return True

        ss = list(s)
        i = 0
        for c in t:
            if i >= len(ss):
                break
            if c == ss[i]:
                i += 1

        return i == len(ss)
