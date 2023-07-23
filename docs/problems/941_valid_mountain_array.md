# 941. Valid Mountain Array

Easy

Given an array of integers `arr`, return true if and only if it is a valid
mountain array.

Recall that `arr` is a mountain array if and only if:

- arr.length >= 3
- There exists some i with 0 < i < arr.length - 1 such that:
  - arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
  - arr[i] > arr[i + 1] > ... > arr[arr.length - 1]

## Solution

```python
class Solution:
    def validMountainArray(self, arr: List[int]) -> bool:
        n = len(arr)

        if n < 3:
            return False

        i = 1
        while i < n:
            if arr[i - 1] < arr[i]:
                i += 1
            else:
                break

        if i == 1 or i == n:
            return False  # need both an increasing and decreasing part

        while i < n:
            if arr[i - 1] > arr[i]:
                i += 1
            else:
                return False

        return i == n
```
