# 883. Projection Area of 3D Shapes

Easy

You are given an `n x n` grid where we place some 1 x 1 x 1 cubes that are
axis-aligned with the `x`, `y`, and `z` axes.

Each value `v = grid[i][j]` represents a tower of `v` cubes placed on top of the
cell `(i, j)`.

We view the projection of these cubes onto the `xy`, `yz`, and `zx` planes.

A projection is like a shadow, that maps our 3-dimensional figure to a
2-dimensional plane. We are viewing the "shadow" when looking at the cubes from
the top, the front, and the side.

Return the total area of all three projections.

## Solution

```python
class Solution:
    def projectionArea(self, grid: List[List[int]]) -> int:
        x = 0
        for row in grid:
            x += len(list(filter(lambda x: x != 0, row)))

        y = sum(map(lambda row: max(row), grid))

        z = 0
        for i in range(len(grid[0])):
            z += max(map(lambda row: row[i], grid))

        return x + y + z
```
