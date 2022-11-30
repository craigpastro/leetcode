"""
54. Spiral Matrix
Medium

Given an m x n matrix, return all elements of the matrix in spiral order.

Example:
Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
Output: [1,2,3,6,9,8,7,4,5]
"""


class Solution:
    def spiralOrder(self, matrix: List[List[int]]) -> List[int]:
        if matrix == []:
            return []

        # https://stackoverflow.com/questions/8421337/rotating-a-two-dimensional-array-in-python
        return list(matrix.pop(0)) + self.spiralOrder(list(zip(*matrix))[::-1])
