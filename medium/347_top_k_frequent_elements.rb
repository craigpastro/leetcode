# 347. Top K Frequent Elements
# Medium
#
# Given an integer array nums and an integer k, return the k most frequent
# elements. You may return the answer in any order.

def top_k_frequent(nums, k)
  h = Hash.new(0)

  nums.each do |n|
    h[n] += 1
  end
  
  # Generally in the next line we could insert the pairs into a priority
  # queue in O(n) time, then extract the top k elements in O(k * log n).
  # The current method takes O(n * log n).
  h.sort_by { |_, v| -v }.take(k).map { |pair| pair[0] }
end
