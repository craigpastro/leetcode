# 168. Excel Sheet Column Title

Easy

Given an integer column_number, return its corresponding column title as it appears in an Excel sheet.

For example:
```
A -> 1
B -> 2
C -> 3
...
Z -> 26
AA -> 27
AB -> 28
...
```

```python
class Solution:
    def convertToTitle(self, columnNumber: int) -> str:
        a = ord("A")
        res = ""

        while columnNumber > 0:
            columnNumber -= 1
            res = chr(columnNumber % 26 + a) + res
            columnNumber //= 26

        return res
```