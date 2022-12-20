# 441. Arranging Coins

Easy

You have n coins and you want to build a staircase with these coins. The staircase consists of k rows where the ith row has exactly i coins. The last row of the staircase may be incomplete.

Given the integer n, return the number of complete rows of the staircase you will build.

```python
import math


class Solution:
    def arrangeCoins(self, n: int) -> int:
        # x^2 + x - 2n >= 0
        return math.floor((-1 + math.sqrt(1 + 8 * n)) / 2)
```
