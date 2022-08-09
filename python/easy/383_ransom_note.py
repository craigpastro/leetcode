"""
383. Ransom Note
Easy

Given two stings ransomNote and magazine, return true if ransomNote can be
constructed from magazine and false otherwise.

Each letter in magazine can only be used once in ransomNote.
"""


class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        d = {}

        for c in magazine:
            if c in d:
                d[c] += 1
            else:
                d[c] = 1

        for c in ransomNote:
            if c not in d or d[c] == 0:
                return False
            d[c] -= 1

        return True
