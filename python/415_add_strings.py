"""
# 415. Add Strings

Easy

Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.

You must solve the problem without using any built-in library for handling large integers (such as BigInteger). You must also not convert the inputs to integers directly.
"""


class Solution:
    def addStrings(self, num1: str, num2: str) -> str:
        l1 = len(num1)
        l2 = len(num2)
        if l1 <= l2:
            num1 = num1.zfill(l2)
        else:
            num2 = num2.zfill(l1)

        num1 = num1[::-1]
        num2 = num2[::-1]

        res = ""
        carry = 0
        for i in range(len(num1)):
            temp = int(num1[i]) + int(num2[i]) + carry
            carry = temp // 10
            res += str(temp % 10)

        if carry > 0:
            res += str(carry)

        return res[::-1]
