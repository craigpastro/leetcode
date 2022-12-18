"""
# 1037. Valid Boomerang

Easy

Given an array points where `points[i] = [xi, yi]` represents a point on the X-Y plane, return true if these points are a boomerang.

A boomerang is a set of three points that are all distinct and not in a straight line.
"""


class Solution:
    def isBoomerang(self, points: List[List[int]]) -> bool:
        p1, p2, p3 = points[0], points[1], points[2]

        if p1 == p2 or p1 == p3 or p2 == p3:
            return False

        if p2[0] - p1[0] == 0 or p3[0] - p2[0] == 0:
            if p2[0] - p1[0] == 0 and p3[0] - p2[0] == 0:
                return False
            else:
                return True

        m1 = (p2[1] - p1[1]) / (p2[0] - p1[0])
        m2 = (p3[1] - p2[1]) / (p3[0] - p2[0])

        return m1 != m2
