# 73. Set Matrix Zeroes

Medium

Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.

You must do it in place.

```python
class Solution:
    def setZeroes(self, matrix: List[List[int]]) -> None:
        """
        Do not return anything, modify matrix in-place instead.
        """

        zeros = self.find_zeros(matrix)
        rows = set([r for r, c in zeros])
        cols = set([c for r, c in zeros])

        m = len(matrix)
        n = len(matrix[0])

        for r in rows:
            for i in range(n):
                matrix[r][i] = 0

        for c in cols:
            for i in range(m):
                matrix[i][c] = 0

    def find_zeros(self, matrix):
        m = len(matrix)
        n = len(matrix[0])
        res = []

        for i in range(m):
            for j in range(n):
                if matrix[i][j] == 0:
                    res.append((i, j))

        return res
```
