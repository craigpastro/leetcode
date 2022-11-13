"""
692. Top K Frequent Words
Medium

Given an array of strings words and an integer k, return the k most frequent
strings.

Return the answer sorted by the frequency from highest to lowest. Sort the
words with the same frequency by their lexicographical order.
"""


class Solution:
    def topKFrequent(self, words: List[str], k: int) -> List[str]:
        def cmp(pair1, pair2):
            w1, n1 = pair1
            w2, n2 = pair2

            if n1 < n2:
                return -1
            elif n1 > n2:
                return 1
            else:
                if w1 < w2:
                    return 1
                elif w1 > w2:
                    return -1
                else:
                    return 0

        d = {}
        for word in words:
            d[word] = d.get(word, 0) + 1

        return [x for x, _ in sorted(d.items(), key=cmp_to_key(cmp), reverse=True)[:k]]
