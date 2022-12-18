# 43. Multiply Strings

Medium

Given two non-negative integers num1 and num2 represented as strings, return the product of num1 and num2, also represented as a string.

Note: You must not use any built-in BigInteger library or convert the inputs to integer directly.

```python
class Solution:
    def multiply(self, num1: str, num2: str) -> str:
        if num1 == "0" or num2 == "0":
            return "0"

        n1 = list(num1)
        n2 = list(num2)

        ln1 = len(n1)
        ln2 = len(n2)
        res = [0] * (ln1 + ln2)

        for i in reversed(range(ln1)):
            for j in reversed(range(ln2)):
                tmp = int(n1[i]) * int(n2[j]) + res[i + j + 1]
                res[i + j + 1] = tmp % 10
                res[i + j] += tmp // 10

        return "".join([str(i) for i in res]).lstrip("0")
```
