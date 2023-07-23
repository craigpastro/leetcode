# 942. DI String Match

Easy

A permutation perm of `n + 1` integers of all the integers in the range `[0, n]`
can be represented as a string `s` of length `n` where:

- `s[i] == 'I'` if `perm[i] < perm[i + 1]`, and
- `s[i] == 'D'` if `perm[i] > perm[i + 1]`.

Given a string `s`, reconstruct the permutation perm and return it. If there are
multiple valid permutations perm, return any of them.

## Solution

```python
class Solution:
    def diStringMatch(self, s: str) -> List[int]:
        low = 0
        high = len(s)

        res = []
        for c in s:
            if c == "I":
                res.append(low)
                low += 1
            else:  # c == "D"
                res.append(high)
                high -= 1

        res.append(low)

        return res
```
