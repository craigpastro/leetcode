"""
63. Unique Paths II
Medium

You are given an m x n integer array grid. There is a robot initially located
at the top-left corner (i.e., grid[0][0]). The robot tries to move to the
bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either
down or right at any point in time.

An obstacle and space are marked as 1 or 0 respectively in grid. A path that
the robot takes cannot include any square that is an obstacle.

Return the number of possible unique paths that the robot can take to reach
the bottom-right corner.

The testcases are generated so that the answer will be less than or equal to
2 * 109.
"""


class Solution:
    def uniquePathsWithObstacles(self, obstacleGrid: List[List[int]]) -> int:
        m = len(obstacleGrid)
        n = len(obstacleGrid[0])
        paths = [[0] * n] * m

        if obstacleGrid[m - 1][n - 1] != 0:
            return 0
        else:
            paths[m - 1][n - 1] = 1

        for i in reversed(range(m)):
            for j in reversed(range(n)):
                if i == m - 1 and j == n - 1:
                    continue

                if obstacleGrid[i][j] == 1:
                    paths[i][j] = 0
                else:
                    right = 0
                    if i + 1 < m and obstacleGrid[i + 1][j] != 1:
                        right = paths[i + 1][j]

                    down = 0
                    if j + 1 < n and obstacleGrid[i][j + 1] != 1:
                        down = paths[i][j + 1]

                    paths[i][j] = right + down

        return paths[0][0]
