"""
766. Toeplitz Matrix
Easy

Given an m x n matrix, return true if the matrix is Toeplitz. Otherwise,
return false.

A matrix is Toeplitz if every diagonal from top-left to bottom-right has
the same elements.
"""


class Solution:
    def isToeplitzMatrix(self, matrix: List[List[int]]) -> bool:
        m, n = len(matrix), len(matrix[0])

        for i in range(1, m):
            for j in range(1, n):
                if matrix[i][j] != matrix[i - 1][j - 1]:
                    return False

        return True
