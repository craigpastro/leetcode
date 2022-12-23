# 3. Longest Substring Without Repeating Characters

Medium

Given a string `s`, find the length of the longest substring without repeating characters.

```python
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        seen = {}
        start = 0
        cur = 0
        max = 0

        for i, c in enumerate(s):
            if c in seen and seen[c] >= start:
                start = seen[c] + 1
                if cur > max:
                    max = cur
                cur = i - start + 1
            else:
                cur += 1

            seen[c] = i

        if cur > max:
            max = cur

        return max
```
