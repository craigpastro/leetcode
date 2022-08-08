"""
242. Valid Anagram
Easy

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word
or phrase, typically using all the original letters exactly once.
"""


class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        return freq(s) == freq(t)


def freq(s):
    d = {}
    for c in s:
        if c in d:
            d[c] += 1
        else:
            d[c] = 1
