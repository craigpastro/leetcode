# 566. Reshape the Matrix

Easy

In MATLAB, there is a handy function called reshape which can reshape an m x n
matrix into a new one with a different size r x c keeping its original data.

You are given an m x n matrix mat and two integers r and c representing the
number of rows and the number of columns of the wanted reshaped matrix.

The reshaped matrix should be filled with all the elements of the original
matrix in the same row-traversing order as they were.

If the reshape operation with given parameters is possible and legal, output the
new reshaped matrix; Otherwise, output the original matrix.

## Solution

```python
class Solution:
    def matrixReshape(self, mat: List[List[int]], r: int, c: int) -> List[List[int]]:
        if len(mat) * len(mat[0]) != r * c:
            return mat

        flat = [x for row in mat for x in row]
        res = []
        m = 0

        for i in range(r):
            row = []
            for j in range(c):
                row.append(flat[m])
                m += 1
            res.append(row)

        return res
```
