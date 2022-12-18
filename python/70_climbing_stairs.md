# 70. Climbing Stairs

Easy

You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

```python
class Solution:
    def __init__(self):
        self.d = {1: 1, 2: 2}

    def climbStairs(self, n: int) -> int:
        if n in self.d:
            return self.d[n]

        if n - 1 not in self.d:
            self.d[n - 1] = self.climbStairs(n - 1)
        if n - 2 not in self.d:
            self.d[n - 2] = self.climbStairs(n - 2)

        return self.d[n - 1] + self.d[n - 2]
```
