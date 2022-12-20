# 680. Valid Palindrome II

Easy

Given a string `s`, return true if the `s` can be palindrome after deleting at most one character from it.

```python
class Solution:
    def validPalindrome(self, s: str) -> bool:
        return self.helper(s, 1)

    def helper(self, s: str, remaining: int) -> bool:
        l = len(s)
        if l == 0 or l == 1:
            return True

        if s[0] == s[l - 1]:
            return self.helper(s[1:-1], remaining)

        if remaining > 0:
            return self.helper(s[0:-1], 0) or self.helper(s[1:], 0)

        return False
```
