# 20. Valid Parentheses

Easy

Given a string s containing just the characters '(', ')', '{', '}', '[' and ']',
determine if the input string is valid.

An input string is valid if:

1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.

```python
class Solution:
    def isValid(self, s: str) -> bool:
        t = []

        for c in s:
            if c in ['(', '{', '[']:
                t.append(c)

            if c in [')', '}', ']']:
                if len(t) == 0 or (not is_match(t.pop(), c)):
                    return False

        return len(t) == 0
      
def is_match(l: str, r: str) -> bool:
    match l:
        case '(':
            return r == ')'
        case '{':
            return r == '}'
        case '[':
            return r == ']'
        case _:
            return False
```
