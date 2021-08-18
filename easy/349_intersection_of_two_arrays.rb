# 349. Intersection of Two Arrays
# Easy
#
# Given two integer arrays nums1 and nums2, return an array of their
# intersection. Each element in the result must be unique and you may return
# the result in any order.

def intersection(nums1, nums2)
  h = {}
  nums1.each do |n|
    h[n] = true
  end

  res = []
  nums2.uniq.each do |n|
    res << n if h.has_key?(n)
  end

  res
end
