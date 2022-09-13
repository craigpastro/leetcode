"""
476. Number Complement
Easy

The complement of an integer is the integer you get when you flip all the 0's
to 1's and all the 1's to 0's in its binary representation.

- For example, The integer 5 is "101" in binary and its complement is "010"
  which is the integer 2.

Given an integer num, return its complement.
"""


class Solution:
    def findComplement(self, num: int) -> int:
        mask = num
        mask |= mask >> 1
        mask |= mask >> 2
        mask |= mask >> 4
        mask |= mask >> 8
        mask |= mask >> 16

        return num ^ mask
