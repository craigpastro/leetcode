# 67. Add Binary

Easy

Given two binary strings a and b, return their sum as a binary string.

```python
class Solution:
    def addBinary(self, a: str, b: str) -> str:
        return format(int(a, 2) + int(b, 2), "b")
```
