# 290. Word Pattern

Easy

Given a pattern and a string s, find if s follows the same pattern.

Here follow means a full match, such that there is a bijection between a letter
in pattern and a non-empty word in s.

#### Example 1

```
Input: pattern = "abba", s = "dog cat cat dog"
Output: true
```

#### Example 2

```
Input: pattern = "abba", s = "dog cat cat fish"
Output: false
```

#### Example 3

```
Input: pattern = "aaaa", s = "dog cat cat dog"
Output: false
```

## Solution

```python
class Solution:
    def wordPattern(self, pattern: str, s: str) -> bool:
        d = {}
        seen_words = set()
        words = s.split(" ")

        if len(pattern) != len(words):
            return False

        for i, c in enumerate(pattern):
            if c in d:
                if d[c] != words[i]:
                    return False
            else:
                if words[i] in seen_words:
                    return False

                d[c] = words[i]
                seen_words.add(words[i])

        return True
```
