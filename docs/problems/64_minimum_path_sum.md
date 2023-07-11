# 64. Minimum Path Sum

Medium

Given a `m x n` grid filled with non-negative numbers, find a path from top left
to bottom right, which minimizes the sum of all numbers along its path.

Note: You can only move either down or right at any point in time.

```python
class Solution:
    def minPathSum(self, grid: List[List[int]]) -> int:
        m = len(grid)
        n = len(grid[0])

        for i in reversed(range(m)):
            for j in reversed(range(n)):
                right = None
                if j + 1 < n:
                    right = grid[i][j + 1]

                down = None
                if i + 1 < m:
                    down = grid[i + 1][j]

                grid[i][j] += self.min_with_none(right, down)

        return grid[0][0]

    def min_with_none(self, x, y):
        if x is None and y is None:
            return 0
        elif x is None:
            return y
        elif y is None:
            return x
        else:
            return min(x, y)
```
