# 118. Pascal's Triangle

Easy

Given an integer numRows, return the first numRows of Pascal's triangle.

In Pascal's triangle, each number is the sum of the two numbers directly above it.

```python
class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        pascal = []

        for row in range(numRows):
            r = []
            for col in range(row + 1):
                if col == 0 or col == row:
                    r.append(1)
                else:
                    r.append(pascal[row - 1][col - 1] + pascal[row - 1][col])
            pascal.append(r)

        return pascal
```
