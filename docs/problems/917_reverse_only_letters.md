# 917. Reverse Only Letters

Easy

Given a string `s`, reverse the string according to the following rules:

- All the characters that are not English letters remain in the same position.
- All the English letters (lowercase or uppercase) should be reversed.

Return `s` after reversing it.

## Solution

```python
class Solution:
    def reverseOnlyLetters(self, s: str) -> str:
        l = list(s)
        i = 0
        j = len(s) - 1

        while i < j:
            if l[i].isalpha() and l[j].isalpha():
                l[i], l[j] = l[j], l[i]
                i += 1
                j -= 1
            elif not l[i].isalpha():
                i += 1
            else:
                j -= 1

        return "".join(l)
```
