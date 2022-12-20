# 345. Reverse Vowels of a String

Easy

Given a string `s`, reverse only all the vowels in the string and return it.

The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both cases.

```python
class Solution:
    def reverseVowels(self, s: str) -> str:
        vowels = []
        ss = list(s)

        for c in ss:
            if c.lower() in "aeiou":
                vowels.append(c)

        for i, c in enumerate(ss):
            if c.lower() in "aeiou":
                ss[i] = vowels.pop()

        return "".join(ss)
```
