"""
867. Transpose Matrix
Easy

Given a 2D integer array matrix, return the transpose of matrix.

The transpose of a matrix is the matrix flipped over its main diagonal,
switching the matrix's row and column indices.
"""


class Solution:
    def transpose(self, matrix: List[List[int]]) -> List[List[int]]:
        m = len(matrix)
        n = len(matrix[0])
        res = []

        for i in range(n):
            new_row = []
            for j in range(m):
                new_row.append(matrix[j][i])

            res.append(new_row)

        return res
