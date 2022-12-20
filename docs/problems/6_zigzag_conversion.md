# 6. ZigZag Conversion

Medium

The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this:
```
P   A   H   N
A P L S I I G
Y   I   R
```
And then read line by line: "PAHNAPLSIIGYIR"


```python
class Solution:
    def convert(self, s: str, numRows: int) -> str:
        if numRows == 1:
            return s

        rows = [""] * numRows
        down = False  # will change on the first iteration
        i = 0

        for c in s:
            if i == numRows - 1 or i == 0:
                down = not down

            rows[i] += c

            if down:
                i += 1
            else:
                i -= 1

        return "".join(rows)
```
