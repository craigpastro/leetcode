"""
278. First Bad Version
Easy

You are a product manager and currently leading a team to develop a new
product. Unfortunately, the latest version of your product fails the quality
check. Since each version is developed based on the previousversion, all the
versions after a bad version are also bad.

Suppose you have n versions [1, 2, ..., n] and you want to find out the first
bad one, which causes all the following ones to be bad.

You are given an API bool isBadVersion(version) which returns whether version
is bad. Implement a function to find the first bad version. You should
minimize the number of calls to the API.
"""

# The isBadVersion API is already defined for you.
# def isBadVersion(version: int) -> bool:


class Solution:
    def firstBadVersion(self, n: int) -> int:
        return helper(1, n)


def helper(low, high):
    if low == high:
        return low

    mid = low + (high - low) // 2
    if isBadVersion(mid):
        return helper(low, mid)
    else:
        return helper(mid + 1, high)
