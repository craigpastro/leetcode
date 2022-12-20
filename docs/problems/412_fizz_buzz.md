# 412. Fizz Buzz

Easy

Given an integer n, return a string array answer (1-indexed) where:
- `answer[i] == "FizzBuzz"` if `i` is divisible by 3 and 5.
- `answer[i] == "Fizz"` if `i` is divisible by 3.
- `answer[i] == "Buzz"` if `i` is divisible by 5.
- `answer[i] == i` (as a string) if none of the above conditions are true.

```python
class Solution:
    def fizzBuzz(self, n: int) -> List[str]:
        return [fb(n) for n in range(1, n + 1)]


def fb(n: int) -> str:
    if n % 3 == 0 and n % 5 == 0:
        return "FizzBuzz"
    elif n % 3 == 0:
        return "Fizz"
    elif n % 5 == 0:
        return "Buzz"
    else:
        return str(n)
```
