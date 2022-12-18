# 14. Longest Common Prefix

Easy

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

```python
class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        l = min([len(str) for str in strs])

        res = []
        for i in range(l):
            if len(set([str[i] for str in strs])) == 1:
                res.append(strs[0][i])
            else:
                break

        return "".join(res)
```
