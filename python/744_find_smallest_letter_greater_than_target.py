"""
# 744. Find Smallest Letter Greater Than Target

Easy

Given a characters array letters that is sorted in non-decreasing order and a character target, return the smallest character in the array that is larger than target.

Note that the letters wrap around.

For example, if target == 'z' and letters == ['a', 'b'], the answer is 'a'.
"""


class Solution:
    def nextGreatestLetter(self, letters: List[str], target: str) -> str:
        for letter in letters:
            if target < letter:
                return letter

        # We've wrapped around
        return letters[0]
