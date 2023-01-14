# 22. Generate Parentheses

Medium

Given n pairs of parentheses, write a function to generate all combinations
of well-formed parentheses.

```python
class Solution:
    def generateParenthesis(self, n: int) -> List[str]:
        return self.helper(n, n, [])

    def helper(self, m, n, ps):
        if m == 0 and n == 0:
            return ["".join(ps)]

        ps1, ps2 = [], []
        if m > 0:
            ps1 = self.helper(m - 1, n, ps + ["("])
        if n > m:
            ps2 = self.helper(m, n - 1, ps + [")"])

        return ps1 + ps2
```
