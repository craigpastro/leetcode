# 5. Longest Palindromic Substring

Medium

Given a string s, return the longest palindromic substring in s.

## Solution

```python
class Solution:
    def longestPalindrome(self, s: str) -> str:
        res = ""

        for i in range(len(s)):
            temp = expand(s, i, i)
            if len(temp) > len(res):
                res = temp
            temp = expand(s, i, i + 1)
            if len(temp) > len(res):
                res = temp

        return res


def expand(s, start, end):
    while start >= 0 and end < len(s) and s[start] == s[end]:
        start -= 1
        end += 1

    return s[start + 1 : end]
```
