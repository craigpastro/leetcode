# 859. Buddy Strings

Easy

Given two strings `s` and `goal`, return `true` if you can swap two letters in `s` so the result is equal to `goal`, otherwise, return `false`.

Swapping letters is defined as taking two indices `i` and `j` (0-indexed) such that `i != j` and swapping the characters at `s[i]` and `s[j]`.

For example, swapping at indices `0` and `2` in `"abcd"` results in `"cbad"`.

```python
class Solution:
    def buddyStrings(self, s: str, goal: str) -> bool:
        if len(s) != len(goal):
            return False

        if s == goal:
            # need to find a duplicate character to swap
            seen = set()
            for a in s:
                if a in seen:
                    return True
                seen.add(a)
            return False

        pairs = []
        for a, b in zip(s, goal):
            if a != b:
                pairs.append((a, b))

        if len(pairs) != 2:
            return False

        if pairs[0] == tuple(reversed(pairs[1])):
            return True

        return False
```
