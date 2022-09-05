"""
70. Climbing Stairs
Easy

You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can
you climb to the top?
"""

d = {1: 1, 2: 2}


class Solution:
    def climbStairs(self, n: int) -> int:
        if n in d:
            return d[n]

        if n - 1 not in d:
            d[n - 1] = self.climbStairs(n - 1)
        if n - 2 not in d:
            d[n - 2] = self.climbStairs(n - 2)

        return d[n - 1] + d[n - 2]
