# 200. Number of Islands

Medium

Given an `m x n` 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

```python
class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        m = len(grid)
        n = len(grid[0])
        num_islands = 0

        for i in range(m):
            for j in range(n):
                if grid[i][j] == "1":
                    num_islands += 1
                    self.turn_land_into_water(grid, i, j)

        return num_islands

    def turn_land_into_water(self, grid: List[List[int]], i: int, j: int):
        m = len(grid)
        n = len(grid[0])

        if i < 0 or i >= m or j < 0 or j >= n or grid[i][j] == "0":
            return

        grid[i][j] = "0"
        self.turn_land_into_water(grid, i, j - 1)
        self.turn_land_into_water(grid, i, j + 1)
        self.turn_land_into_water(grid, i - 1, j)
        self.turn_land_into_water(grid, i + 1, j)
```
