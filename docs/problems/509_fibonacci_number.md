# 509. Fibonacci Number

Easy

The Fibonacci numbers, commonly denoted `F(n)` form a sequence, called the
Fibonacci sequence, such that each number is the sum of the two preceding ones,
starting from 0 and 1. That is,

- `F(0) = 0`, `F(1) = 1`
- `F(n) = F(n - 1) + F(n - 2)`, for `n > 1.`

Given `n`, calculate `F(n)`.

## Solution

```python
class Solution:
    def fib(self, n: int) -> int:
        a = 0
        b = 1

        if n == 0:
            return a
        if n == 1:
            return b

        for i in range(2, n + 1):
            a, b = b, a + b

        return b
```
