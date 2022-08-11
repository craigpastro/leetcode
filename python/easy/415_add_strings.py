"""
415. Add Strings
Easy

Given two non-negative integers, num1 and num2 represented as string, return
the sum of num1 and num2 as a string.

You must solve the problem without using any built-in library for handling
large integers (such as BigInteger). You must also not convert the inputs
to integers directly.
"""


class Solution:
    def addStrings(self, num1: str, num2: str) -> str:
        z = zip_longest(list(num1), list(num2))
        res = []
        carry = 0

        for a, b in range(z):




def zip_longest(a, b, empty=""):
    min_length = min(len(a), len(b))
    max_length = max(len(a), len(b))
    first_is_less = True
    if len(b) < len(a):
        first_is_less = False

    res = []
    for i in range(min_length):
        res.append((a[i], b[i]))

    for i in range(min_length, max_length):
        if first_is_less:
            res.append(empty, b[i])
        else:
            res.append(a[i], empty)
