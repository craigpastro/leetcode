# 50. Pow(x, n)

Medium

Implement pow(x, n), which calculates x raised to the power n (i.e., x^n).

```python
class Solution:
    def myPow(self, x: float, n: int) -> float:
        if n < 0:
            return 1 / self.myPow(x, -n)
        elif n == 0:
            return 1.0
        elif n % 2 == 1:
            return x * self.myPow(x, n - 1)
        else:
            return self.myPow(x * x, n // 2)
```
