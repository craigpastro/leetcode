# 62. Unique Paths

Medium

There is a robot on an `m x n` grid. The robot is initially located at the
top-left corner (i.e., `grid[0][0]`). The robot tries to move to the
bottom-right corner (i.e., `grid[m - 1][n - 1]`). The robot can only move either
down or right at any point in time.

Given the two integers `m` and `n`, return the number of possible unique paths
that the robot can take to reach the bottom-right corner.

The test cases are generated so that the answer will be less than or equal to
`2 * 10^9`.

```python
class Solution:
    def uniquePaths(self, m: int, n: int) -> int:
        matrix = [[1] * n] * m

        for i in reversed(range(m - 1)):
            for j in reversed(range(n - 1)):
                matrix[i][j] = matrix[i + 1][j] + matrix[i][j + 1]

        return matrix[0][0]
```
