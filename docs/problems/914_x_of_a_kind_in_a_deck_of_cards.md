# 914. X of a Kind in a Deck of Cards

Easy

You are given an integer array `deck` where `deck[i]` represents the number
written on the ith card.

Partition the cards into one or more groups such that:

- Each group has exactly `x` cards where `x > 1`, and
- All the cards in one group have the same integer written on them.

Return `true` if such partition is possible, or `false` otherwise.

## Solution

```python
import functools
import math


class Solution:
    def hasGroupsSizeX(self, deck: List[int]) -> bool:
        cards = {}
        for card in deck:
            cards[card] = cards.get(card, 0) + 1

        if functools.reduce(math.gcd, set(cards.values())) > 1:
            return True

        return False
```
