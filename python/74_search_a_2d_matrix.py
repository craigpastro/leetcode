"""
74. Search a 2D Matrix
Medium

Write an efficient algorithm that searches for a value in an m x n matrix.
This matrix has the following properties:

- Integers in each row are sorted from left to right.
- The first integer of each row is greater than the last integer of the
  previous row.
"""


class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        return target in [e for row in matrix for e in row]
