"""
22. Generate Parentheses
Medium

Given n pairs of parentheses, write a function to generate all combinations
of well-formed parentheses.
"""


class Solution:
    def generateParenthesis(self, n: int) -> List[str]:
        return helper(n, n, [])


def helper(m, n, ps):
    if m == 0 and n == 0:
        return ["".join(ps)]

    ps1, ps2 = [], []
    if m > 0:
        ps1 = helper(m - 1, n, ps + ["("])
    if n > m:
        ps2 = helper(m, n - 1, ps + [")"])

    return ps1 + ps2
