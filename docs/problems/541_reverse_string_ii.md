# 541. Reverse String II

Easy

Given a string s and an integer k, reverse the first k characters for every 2k characters counting from the start of the string.

If there are fewer than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and leave the other as original.

```python
class Solution:
    def reverseStr(self, s: str, k: int) -> str:
        ss = list(s)
        l = len(ss)

        for i in range(0, l, 2 * k):
            ss[i : i + k] = reversed(ss[i : i + k])

        return "".join(ss)
```
