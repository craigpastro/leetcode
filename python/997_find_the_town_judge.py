"""
# 997. Find the Town Judge

Easy

In a town, there are n people labeled from 1 to n. There is a rumor that one of these people is secretly the town judge.

If the town judge exists, then:

1. The town judge trusts nobody.
2. Everybody (except for the town judge) trusts the town judge.
3. There is exactly one person that satisfies properties 1 and 2.

You are given an array trust where trust[i] = [ai, bi] representing that the person labeled ai trusts the person labeled bi.

Return the label of the town judge if the town judge exists and can be identified, or return -1 otherwise.
"""


class Solution:
    def findJudge(self, n: int, trust: List[List[int]]) -> int:
        if n == 1:
            return 1

        people = set(range(1, n + 1))
        trusts = set()
        d = {}

        for x, y in trust:
            trusts.add(x)
            if y in d:
                d[y].add(x)
            else:
                d[y] = set([x])

        for p in people - trusts:
            if p in d and len(d[p]) == n - 1:
                return p

        return -1
