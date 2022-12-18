"""
# 557. Reverse Words in a String III

Easy

Given a string `s`, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
"""


class Solution:
    def reverseWords(self, s: str) -> str:
        res = []
        for word in s.split(" "):
            res.append(word[::-1])

        return " ".join(res)
