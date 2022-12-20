# 605. Can Place Flowers

Easy

You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.

```python
class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        if n == 0:
            return True

        l = len(flowerbed)
        res = 0
        i = 0

        while i < l:
            if flowerbed[i] == 0:
                empty_left = i == 0 or flowerbed[i - 1] == 0
                empty_right = i + 1 == l or flowerbed[i + 1] == 0

                if empty_left and empty_right:
                    res += 1
                    i += 1

                if res >= n:
                    return True

            i += 1

        return False
```
