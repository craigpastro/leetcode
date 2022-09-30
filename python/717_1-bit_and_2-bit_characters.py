"""
717. 1-bit and 2-bit Characters
Easy

We have two special characters:
- The first character can be represented by one bit 0.
- The second character can be represented by two bits (10 or 11).

Given a binary array bits that ends with 0, return true if the last character
must be a one-bit character.
"""


class Solution:
    def isOneBitCharacter(self, bits: List[int]) -> bool:
        l = len(bits)
        if l == 0:
            return False

        if len(bits) == 1:
            return True

        if bits[0] == 1:
            return self.isOneBitCharacter(bits[2:])

        return self.isOneBitCharacter(bits[1:])
