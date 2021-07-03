# 88. Merge Sorted Array
# Easy
#
# You are given two integer arrays nums1 and nums2, sorted in non-decreasing
# order, and two integers m and n, representing the number of elements in
# nums1 and nums2 respectively.
#
# Merge nums1 and nums2 into a single array sorted in non-decreasing order.
#
# The final sorted array should not be returned by the function, but instead
# be stored inside the array nums1. To accommodate this, nums1 has a length of
# m + n, where the first m elements denote the elements that should be merged,
# and the last n elements are set to 0 and should be ignored. nums2 has a
# length of n.

def merge(nums1, m, nums2, n)
  return if n.zero?

  while n.positive?
    if m.zero? || nums1[m - 1] <= nums2[n - 1]
      nums1[m + n - 1] = nums2[n - 1]
      n -= 1
    else
      nums1[m + n - 1] = nums1[m - 1]
      m -= 1
    end
  end
end

l1 = [1, 2, 3, 0, 0, 0]
merge(l1, 3, [2,  5, 6], 3)
p l1 # [1, 2, 2, 3, 5, 6]

l2 = [1]
merge(l2, 1, [], 0)
p l2 # [1]

l3 = [0]
merge(l3, 0, [1], 1)
p l3 # [1]
