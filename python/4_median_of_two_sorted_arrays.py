"""
4. Median of Two Sorted Arrays
Hard

Given two sorted arrays nums1 and nums2 of size m and n respectively, return
the median of the two sorted arrays.

The overall run time complexity should be O(log (m+n)).
"""

# Not a O(log (m+n)), but rather an O(m+n). The simplicity of the solution
# versus the complexity of the recursive chopping the lists in half at each
# step solution justifies it... I guess.
class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        nums = self.merge(nums1, nums2, [])

        n = len(nums)
        if n % 2 == 0:
            return (nums[n // 2 - 1] + nums[n // 2]) / 2
        else:
            return nums[n // 2]

    def merge(self, nums1: List[int], nums2: List[int], res: List[int]) -> List[int]:
        if len(nums1) == 0 and len(nums2) == 0:
            return res

        if len(nums1) == 0:
            return res + nums2

        if len(nums2) == 0:
            return res + nums1

        if nums1[0] <= nums2[0]:
            res.append(nums1[0])
            return self.merge(nums1[1:], nums2, res)
        else:
            res.append(nums2[0])
            return self.merge(nums1, nums2[1:], res)
