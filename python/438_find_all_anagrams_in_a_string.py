"""
438. Find All Anagrams in a String
Medium

Given two strings s and p, return an array of all the start indices of p's
anagrams in s. You may return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a
different word or phrase, typically using all the original letters exactly
once.
"""


class Solution:
    def findAnagrams(self, s: str, p: str) -> List[int]:
        if len(s) < len(p):
            return []

        ds = {}
        dp = {}
        for c in s:
            ds[c], dp[c] = 0, 0
        for c in p:
            ds[c], dp[c] = 0, 0

        for c in p:
            dp[c] += 1

        lens = len(s)
        lenp = len(p)

        for i in range(lenp):
            ds[s[i]] += 1

        res = []
        for i in range(lenp, lens + 1):
            if ds == dp:
                res.append(i - lenp)

            if i == lens:
                break

            ds[s[i - lenp]] -= 1
            ds[s[i]] += 1

        return res
