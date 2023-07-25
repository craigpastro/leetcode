# 1002. Find Common Characters

Easy

Given a string array words, return an array of all characters that show up in
all strings within the words (including duplicates). You may return the answer
in any order.

#### Example 1:

```
Input: words = ["bella","label","roller"]
Output: ["e","l","l"]
```

#### Example 2:

```
Input: words = ["cool","lock","cook"]
Output: ["c","o"]
```

#### Constraints:

- 1 <= words.length <= 100
- 1 <= words[i].length <= 100
- words[i] consists of lowercase English letters.

## Solution

```python
class Solution:
    def commonChars(self, words: List[str]) -> List[str]:
        count = [100 * 100 + 1] * 26

        for word in words:
            word_count = [0] * 26
            for c in word:
                word_count[ord(c) - ord("a")] += 1

            for i in range(26):
                count[i] = min(count[i], word_count[i])

        ans = []
        for i in range(26):
            if count[i] > 0:
                ans.extend([chr(i + ord("a"))] * count[i])

        return ans
```
