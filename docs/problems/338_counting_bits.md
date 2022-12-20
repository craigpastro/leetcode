# 338. Counting Bits

Easy

Given an integer `n`, return an array `ans` of length `n + 1` such that for each `i` `(0 <= i <= n)`, `ans[i]` is the number of 1's in the binary representation of `i`.

```python
class Solution:
    def countBits(self, n: int) -> List[int]:
        res = []
        for i in range(n + 1):
            res.append(format(n, "b").count(1))

        return res
```
