# 1283. Find the Smallest Divisor Given a Threshold

Medium

Given an array of integers nums and an integer threshold, we will choose a
positive integer divisor, divide all the array by it, and sum the division's
result. Find the smallest divisor such that the result mentioned above is less
than or equal to threshold.

Each result of the division is rounded to the nearest integer greater than or
equal to that element. (For example: 7/3 = 3 and 10/2 = 5).

The test cases are generated so that there will be an answer.

## Solution

```python
class Solution:
    def smallestDivisor(self, nums: List[int], threshold: int) -> int:
        minD = 1
        maxD = max(nums) + 1

        while minD < maxD:
            mid = (maxD + minD) // 2
            res = sum([math.ceil(num / mid) for num in nums])

            print(minD, mid, maxD, res)
            if res <= threshold:
                maxD = mid
            else:
                minD = mid + 1

        return maxD
```
