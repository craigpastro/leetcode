# 3. Longest Substring Without Repeating Characters

[Link](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

Medium

Given a string `s`, find the length of the longest substring without repeating
characters.

#### Example 1:

```
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
```

#### Example 2:

```
Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```

#### Example 3:

```
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
```

#### Constraints:

- 0 <= s.length <= 5 * 104
- s consists of English letters, digits, symbols and spaces.

## Solution

```python
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        seen = {}
        start = 0
        cur = 0
        max = 0

        for i, c in enumerate(s):
            if c in seen and seen[c] >= start:
                start = seen[c] + 1
                if cur > max:
                    max = cur
                cur = i - start + 1
            else:
                cur += 1

            seen[c] = i

        if cur > max:
            max = cur

        return max
```
