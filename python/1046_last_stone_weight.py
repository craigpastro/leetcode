"""
1046. Last Stone Weight
Easy

You are given an array of integers stones where stones[i] is the weight of
the ith stone.

We are playing a game with the stones. On each turn, we choose the heaviest
two stones and smash them together. Suppose the heaviest two stones have
weights x and y with x <= y. The result of this smash is:
- If x == y, both stones are destroyed, and
- If x != y, the stone of weight x is destroyed, and the stone of weight y
  has new weight y - x.

At the end of the game, there is at most one stone left.

Return the weight of the last remaining stone. If there are no stones left,
return 0.
"""

import heapq


class Solution:
    def lastStoneWeight(self, stones: List[int]) -> int:
        stones = [-s for s in stones]
        heapq.heapify(stones)

        while len(stones) > 1:
            y = heapq.heappop(stones)
            x = heapq.heappop(stones)
            if x != y:
                heapq.heappush(stones, y - x)

        if len(stones) == 0:
            return 0

        return -heapq.heappop(stones)
