"""
728. Self Dividing Numbers
Easy

A self-dividing number is a number that is divisible by every digit it
contains.

- For example, 128 is a self-dividing number because 128 % 1 == 0,
  128 % 2 == 0, and 128 % 8 == 0.

A self-dividing number is not allowed to contain the digit zero.

Given two integers left and right, return a list of all the self-dividing
numbers in the range [left, right].
"""


class Solution:
    def selfDividingNumbers(self, left: int, right: int) -> List[int]:
        res = []
        for i in range(left, right + 1):
            if self_divides(i):
                res.append(i)

        return res


def self_divides(n: int) -> bool:
    for i in str(n):
        if i == "0" or n % int(i) != 0:
            return False
    return True
