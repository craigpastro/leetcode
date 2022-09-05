# 350. Intersection of Two Arrays II
# Easy
#
# Given two integer arrays nums1 and nums2, return an array of their
# intersection. Each element in the result must appear as many times as it
# shows in both arrays and you may return the result in any order.

def intersection(nums1, nums2)
  h = Hash.new(0)

  nums1.each do |n|
    h[n] += 1
  end

  res = []
  nums2.each do |n|
    if h.has_key?(n) && (h[n]).positive?
      res << n
      h[n] -= 1
    end
  end

  res
end
