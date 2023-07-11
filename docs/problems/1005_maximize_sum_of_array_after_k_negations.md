# 1005. Maximize Sum Of Array After K Negations

Easy

Given an integer array nums and an integer k, modify the array in the following
way:

- choose an index i and replace nums[i] with -nums[i].

You should apply this process exactly k times. You may choose the same index i
multiple times.

Return the largest possible sum of the array after modifying it in this way.

```python
class Solution:
    def largestSumAfterKNegations(self, nums: List[int], k: int) -> int:
        negs = sorted(filter(lambda x: x < 0, nums))
        pos = sorted(filter(lambda x: x > 0, nums))
        zeros = nums.count(0) > 0

        i = 0
        while i < len(negs) and k > 0:
            negs[i] = -negs[i]
            i += 1
            k -= 1

        res = sorted(negs + pos)

        if zeros > 0:
            return sum(res)

        k %= 2

        if k == 1:
            res[0] = -res[0]

        return sum(res)
```
