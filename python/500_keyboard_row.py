"""
# 500. Keyboard Row

Easy

Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below.

In the American keyboard:
- the first row consists of the characters "qwertyuiop",
- the second row consists of the characters "asdfghjkl", and
- the third row consists of the characters "zxcvbnm".
"""

import re


class Solution:
    def findWords(self, words: List[str]) -> List[str]:
        r = re.compile("^[qwertyuiop]+$|^[asdfghjkl]+$|^[zxcvbnm]+$")
        return [word for word in words if r.match(word.lower())]
