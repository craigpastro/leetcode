# 733. Flood Fill

Easy

An image is represented by an m x n integer grid image where image[i][j]
represents the pixel value of the image.

You are also given three integers sr, sc, and color. You should perform a flood
fill on the image starting from the pixel image[sr][sc].

To perform a flood fill, consider the starting pixel, plus any pixels connected
4-directionally to the starting pixel of the same color as the starting pixel,
plus any pixels connected 4-directionally to those pixels (also with the same
color), and so on. Replace the color of all of the aforementioned pixels with
color.

Return the modified image after performing the flood fill.

## Solution

```python
class Solution:
    def floodFill(
        self, image: List[List[int]], sr: int, sc: int, color: int
    ) -> List[List[int]]:
        if image[sr][sc] == color:
            return image

        self.m = len(image)
        self.n = len(image[0])
        self.image = image
        self.originalColor = image[sr][sc]

        self.helper(sr, sc, color)

        return self.image

    def helper(self, sr: int, sc: int, color: int):
        if sr < 0 or sr >= self.m or sc < 0 or sc >= self.n:
            return

        if self.image[sr][sc] == self.originalColor:
            self.image[sr][sc] = color

            self.helper(sr - 1, sc, color)
            self.helper(sr + 1, sc, color)
            self.helper(sr, sc - 1, color)
            self.helper(sr, sc + 1, color)
```
