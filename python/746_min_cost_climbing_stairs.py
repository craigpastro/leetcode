"""
# 746. Min Cost Climbing Stairs

Easy

You are given an integer array cost where cost[i] is the cost of ith step on a staircase. Once you pay the cost, you can either climb one or two steps.

You can either start from the step with index 0, or the step with index 1.

Return the minimum cost to reach the top of the floor.
"""


class Solution:
    def minCostClimbingStairs(self, cost: List[int]) -> int:
        n = len(cost)
        costs = [0] * n
        costs[0] = cost[0]
        costs[1] = cost[1]

        for i in range(2, n):
            costs[i] = cost[i] + min(costs[i - 1], costs[i - 2])

        return min(costs[-1], costs[-2])
