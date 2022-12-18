"""
# 868. Binary Gap

Easy

Given a positive integer n, find and return the longest distance between any two adjacent 1's in the binary representation of n. If there are no two adjacent 1's, return 0.

Two 1's are adjacent if there are only 0's separating them (possibly no 0's). The distance between two 1's is the absolute difference between their bit positions. For example, the two 1's in "1001" have a distance of 3.
"""


class Solution:
    def binaryGap(self, n: int) -> int:
        b = format(n, "b")
        last = 0
        gap = 0

        for i in range(1, len(b)):
            if b[i] == "1":
                if i - last > gap:
                    gap = i - last

                last = i

        return gap
