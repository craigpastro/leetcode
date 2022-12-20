# 645. Set Mismatch

Easy

You have a set of integers s, which originally contains all the numbers from 1 to n. Unfortunately, due to some error, one of the numbers in s got duplicated to another number in the set, which results in repetition of one number and loss of another number.

You are given an integer array nums representing the data status of this set after the error.

Find the number that occurs twice and the number that is missing and return them in the form of an array.

```python
class Solution:
    def findErrorNums(self, nums: List[int]) -> List[int]:
        mask = [0] * len(nums)
        repeated = 0

        for num in nums:
            if mask[num - 1] == 1:
                repeated = num
            mask[num - 1] = 1

        return [repeated, mask.index(0) + 1]
```
