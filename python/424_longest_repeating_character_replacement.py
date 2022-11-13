"""
424. Longest Repeating Character Replacement
Medium

You are given a string s and an integer k. You can choose any character of
the string and change it to any other uppercase English character. You can
perform this operation at most k times.

Return the length of the longest substring containing the same letter you can
get after performing the above operations.
"""


class Solution:
    def characterReplacement(self, s: str, k: int) -> int:
        d = {}
        left = 0
        maxf = 0
        res = 0

        for right in range(len(s)):
            c = s[right]
            d[c] = d.get(c, 0) + 1
            maxf = max(maxf, d[c])

            while right - left + 1 - maxf > k:
                d[s[left]] -= 1
                left += 1

            res = max(res, right - left + 1)

        return res
