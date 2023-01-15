# 697. Degree of an Array

Easy

Given a non-empty array of non-negative integers `nums`, the degree of this array is defined as the maximum frequency of any one of its elements.

Your task is to find the smallest possible length of a (contiguous) subarray of `nums`, that has the same degree as `nums`.

```python
class Solution:
    def findShortestSubArray(self, nums: List[int]) -> int:
        left_idx, freq = {}, {}
        max_freq, l = 0, len(nums)

        for i, num in enumerate(nums):
            if num not in left_idx:
                left_idx[num] = i
            freq[num] = freq.get(num, 0) + 1

            if freq[num] > max_freq:
                max_freq = freq[num]
                l = i - left_idx[num] + 1
            elif freq[num] == max_freq:
                if l > i - left_idx[num] + 1:
                    l = i - left_idx[num] + 1

        return l
```
