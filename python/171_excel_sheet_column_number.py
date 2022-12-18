"""
# 171. Excel Sheet Column Number

Easy

Given a string column_title that represents the column title as appear in an Excel sheet, return its corresponding column number.

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
"""


class Solution:
    def titleToNumber(self, columnTitle: str) -> int:
        a = ord("A")
        res = 0

        for c in columnTitle:
            res = res * 26 + (ord(c) - a) + 1

        return res
