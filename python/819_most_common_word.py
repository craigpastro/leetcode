"""
# 819. Most Common Word

Easy

Given a string paragraph and a string array of the banned words banned, return the most frequent word that is not banned. It is guaranteed there is at least one word that is not banned, and that the answer is unique.

The words in paragraph are case-insensitive and the answer should be returned in lowercase.
"""


class Solution:
    def mostCommonWord(self, paragraph: str, banned: List[str]) -> str:
        banned = set(banned)
        paragraph = re.sub("[^a-z0-9 ]", " ", paragraph.lower()).split()
        d = {}

        for word in paragraph:
            if word not in banned:
                d[word] = d.get(word, 0) + 1

        return max(d, key=d.get)
