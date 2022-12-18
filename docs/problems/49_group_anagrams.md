# 49. Group Anagrams

Medium

Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

```python
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        d = {}

        for str in strs:
            t = tuple(sorted(str))
            d[t] = d.get(t, []) + [str]

        return d.values()
```