# 703. Kth Largest Element in a Stream

Easy

Design a class to find the kth largest element in a stream. Note that it is the kth largest element in the sorted order, not the kth distinct element.

Implement `KthLargest` class:

- `KthLargest(int k, int[] nums)` Initializes the object with the integer k and the stream of integers nums.
- `int add(int val)` Appends the integer val to the stream and returns the element representing the kth largest element in the stream.

```python
from sortedcontainers import SortedList


class KthLargest:
    def __init__(self, k: int, nums: List[int]):
        self.k = k
        self.nums = SortedList(nums)

    def add(self, val: int) -> int:
        self.nums.add(val)
        return self.nums[len(self.nums) - self.k]
```
