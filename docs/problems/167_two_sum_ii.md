# 167. Two Sum II - Input array is sorted

Medium

Given an array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number.

Return the indices of the two numbers (1-indexed) as an integer array answer of size 2, where 1 <= answer[0] < answer[1] <= numbers.length.

The tests are generated such that there is exactly one solution. You may not use the same element twice.

Your solution must use only constant extra space.

```python
class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        n = len(numbers)
        i, j = 0, n - 1
        while i < j:
            candidate = numbers[i] + numbers[j]
            if candidate < target or (i > 0 and numbers[i - 1] == numbers[i]):
                i += 1
            elif candidate > target:
                j -= 1
            else:
                # the answer is supposed to be 1-indexed
                return [i + 1, j + 1]
```
