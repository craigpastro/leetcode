# 387. First Unique Character in a String

Easy

Given a string `s`, find the first non-repeating character in it and return its index. If it does not exist, return `-1`.

```python
class Solution:
    def firstUniqChar(self, s: str) -> int:
        d = {}

        for c in s:
            d[c] = d.get(c, 0) + 1

        for i, c in enumerate(s):
            if d[c] == 1:
                return i

        return -1
```
