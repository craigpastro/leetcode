# 125. Valid Palindrome

Easy

Given a string s, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

```python
import re


class Solution:
    def isPalindrome(self, s: str) -> bool:
        t = re.sub("[^A-Za-z0-9]", "", s).lower()
        return t == t[::-1]
```
