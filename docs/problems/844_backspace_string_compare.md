# 844. Backspace String Compare

Easy

Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character.

Note that after backspacing an empty text, the text will continue empty.

```python
class Solution:
    def backspaceCompare(self, s: str, t: str) -> bool:
        return self.sanitize(s) == self.sanitize(t)

    def sanitize(self, s: str) -> str:
        res = []
        for c in s:
            if c != "#":
                res.append(c)
            elif len(res) > 0:
                res.pop()
        return res
```
