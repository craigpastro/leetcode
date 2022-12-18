"""
# 119. Pascal's Triangle II

Easy

Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.

In Pascal's triangle, each number is the sum of the two numbers directly above it.
"""


class Solution:
    def getRow(self, rowIndex: int) -> List[int]:
        pascal = []

        for row in range(rowIndex + 1):
            r = []
            for col in range(row + 1):
                if col == 0 or col == row:
                    r.append(1)
                else:
                    r.append(pascal[row - 1][col - 1] + pascal[row - 1][col])
            pascal.append(r)

        return pascal[rowIndex]
