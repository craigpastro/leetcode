# 367. Valid Perfect Square

Easy

Given a positive integer `num`, write a function which returns `True` if `num` is a perfect square else `False`.

Follow up: Do not use any built-in library function such as `sqrt`.

```python
# The sum of the first odd numbers is always a perfect square.
class Solution:
    def isPerfectSquare(self, num: int) -> bool:
        acc = 1

        while num > 0:
            num -= acc
            acc += 2

        return num == 0
```
