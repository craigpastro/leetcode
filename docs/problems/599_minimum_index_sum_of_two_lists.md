# 599. Minimum Index Sum of Two Lists

Easy

Given two arrays of strings list1 and list2, find the common strings with the least index sum.

A common string is a string that appeared in both list1 and list2.

A common string with the least index sum is a common string such that if it appeared at list1[i] and list2[j] then i + j should be the minimum value among all the other common strings.

Return all the common strings with the least index sum. Return the answer in any order.

```python
class Solution:
    def findRestaurant(self, list1: List[str], list2: List[str]) -> List[str]:
        d = {}
        for i, w in enumerate(list1):
            d[w] = i

        e = {}
        for i, w in enumerate(list2):
            if w in d:
                e[w] = d[w] + i

        m = min(e.values())

        return [k for k, v in e.items() if v == m]
```
