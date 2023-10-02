# 211. Design Add and Search Words Data Structure

Medium

Design a data structure that supports adding new words and finding if a string matches any previously added string.

Implement the WordDictionary class:

- WordDictionary() Initializes the object.
- void addWord(word) Adds word to the data structure, it can be matched later.
- bool search(word) Returns true if there is any string in the data structure that matches word or false otherwise. word may contain dots '.' where dots can be matched with any letter.

#### Example:

```
Input
["WordDictionary","addWord","addWord","addWord","search","search","search","search"]
[[],["bad"],["dad"],["mad"],["pad"],["bad"],[".ad"],["b.."]]
Output
[null,null,null,null,false,true,true,true]

Explanation
WordDictionary wordDictionary = new WordDictionary();
wordDictionary.addWord("bad");
wordDictionary.addWord("dad");
wordDictionary.addWord("mad");
wordDictionary.search("pad"); // return False
wordDictionary.search("bad"); // return True
wordDictionary.search(".ad"); // return True
wordDictionary.search("b.."); // return True
```

#### Constraints:

- 1 <= word.length <= 25
- word in addWord consists of lowercase English letters.
- word in search consist of '.' or lowercase English letters.
- There will be at most 2 dots in word for search queries.
- At most 104 calls will be made to addWord and search.

## Solution

```python
class WordDictionary:
    END_CHARACTER = "$"

    def __init__(self):
        self.root = {}

    def addWord(self, word: str) -> None:
        curr = self.root

        for c in word:
            if c not in curr:
                curr[c] = {}
            curr = curr[c]

        curr[self.END_CHARACTER] = {}

    def search(self, word: str) -> bool:
        return self.search_helper(word, self.root)

    def search_helper(self, word: str, curr):
        if not word:
            return self.END_CHARACTER in curr

        c = word[0]
        rest = word[1:]

        if c == ".":
            return any(self.search_helper(rest, v) for v in curr.values())
        elif c not in curr:
            return False
        else:
            return self.search_helper(rest, curr[c])
```
