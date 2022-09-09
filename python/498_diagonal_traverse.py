"""
498. Diagonal Traverse
Medium

Given an m x n matrix mat, return an array of all the elements of the array
in a zig-zag diagonal order.

Example:
[[1, 2, 3],
 [4, 5, 6],
 [7, 8, 9]]  -->  [1, 2, 4, 7, 5, 3, 6, 8, 9]
"""


class Solution:
    def findDiagonalOrder(self, mat: List[List[int]]) -> List[int]:
        if len(mat) == 0:
            return []

        m = len(mat)
        n = len(mat[0])

        res = []
        for s in range(m + n - 1):
            tmp = []

            if s < n:
                i, j = 0, s
            else:
                i, j = s - n + 1, n - 1

            while i < m and j >= 0:
                tmp.append(mat[i][j])
                i += 1
                j -= 1

            if s % 2 == 0:
                tmp.reverse()

            res.extend(tmp)

        return res
