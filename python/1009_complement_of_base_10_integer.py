"""
1009. Complement of Base 10 Integer
Easy

The complement of an integer is the integer you get when you flip all the 0's
to 1's and all the 1's to 0's in its binary representation.

- For example, The integer 5 is "101" in binary and its complement is "010"
  which is the integer 2.

Given an integer n, return its complement.
"""


class Solution:
    def bitwiseComplement(self, n: int) -> int:
        if n == 0:
            return 1

        mask = n
        mask |= mask >> 1
        mask |= mask >> 2
        mask |= mask >> 4
        mask |= mask >> 8
        mask |= mask >> 16

        return n ^ mask
