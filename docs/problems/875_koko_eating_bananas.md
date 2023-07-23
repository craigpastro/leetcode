# 875. Koko Eating Bananas

Medium

Koko loves to eat bananas. There are n piles of bananas, the ith pile has
piles[i] bananas. The guards have gone and will come back in h hours.

Koko can decide her bananas-per-hour eating speed of k. Each hour, she chooses
some pile of bananas and eats k bananas from that pile. If the pile has less
than k bananas, she eats all of them instead and will not eat any more bananas
during this hour.

Koko likes to eat slowly but still wants to finish eating all the bananas before
the guards return.

Return the minimum integer k such that she can eat all the bananas within h
hours.

## Solution

```python
class Solution:
    def minEatingSpeed(self, piles: List[int], h: int) -> int:
        minE = 1
        maxE = max(piles)

        while minE < maxE:
            mid = (maxE + minE) // 2

            if self.can_eat(piles, h, mid):
                maxE = mid
            else:
                minE = mid + 1

        return minE

    def can_eat(self, piles: List[int], h: int, n: int) -> bool:
        hours = 0
        for pile in piles:
            hours += math.ceil(pile / n)

        return hours <= h
```
