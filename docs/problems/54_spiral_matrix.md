# 54. Spiral Matrix

Medium

Given an `m x n` matrix, return all elements of the matrix in spiral order.

#### Example 1:

```
Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
Output: [1,2,3,6,9,8,7,4,5]
```

#### Example 2:

```
Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
Output: [1,2,3,4,8,12,11,10,9,5,6,7]
```

## Solution

```python
class Solution:
    def spiralOrder(self, matrix: List[List[int]]) -> List[int]:
        if matrix == []:
            return []

        # Pop the first row, then rotate the remainder and recurse
        # https://stackoverflow.com/questions/8421337/rotating-a-two-dimensional-array-in-python
        return list(matrix.pop(0)) + self.spiralOrder(list(zip(*matrix))[::-1])
```
