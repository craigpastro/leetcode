"""
59. Spiral Matrix II
Medium

Given a positive integer n, generate an n x n matrix filled with elements
from 1 to n^2 in spiral order.
"""


class Solution:
    def generateMatrix(self, n: int) -> List[List[int]]:
        matrix = [[0] * n for _ in range(n)]
        v = 1
        top, right, bottom, left = 0, n - 1, n - 1, 0

        while v <= n * n:
            for i in range(left, right + 1):
                matrix[top][i] = v
                v += 1
            top += 1

            for i in range(top, bottom + 1):
                matrix[i][right] = v
                v += 1
            right -= 1

            for i in reversed(range(left, right + 1)):
                matrix[bottom][i] = v
                v += 1
            bottom -= 1

            for i in reversed(range(top, bottom + 1)):
                matrix[i][left] = v
                v += 1
            left += 1

        return matrix
