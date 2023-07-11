295. Find Median from Data Stream

https://leetcode.com/problems/find-median-from-data-stream/

Hard

The median is the middle value in an ordered integer list. If the size of the
list is even, there is no middle value, and the median is the mean of the two
middle values.

For example, for arr = [2,3,4], the median is 3. For example, for arr = [2,3],
the median is (2 + 3) / 2 = 2.5. Implement the MedianFinder class:

MedianFinder() initializes the MedianFinder object. void addNum(int num) adds
the integer num from the data stream to the data structure. double findMedian()
returns the median of all elements so far. Answers within 10-5 of the actual
answer will be accepted.

Notes:

- The left (max) heap contains at most one element more than the right (min)
  heap.
- If the heaps are different sizes the median is at the top of the left heap.
- If the heaps are the same sizes the median is the sum divided by 2 of the top
  elements of the heaps.

```python
class MedianFinder:
    def __init__(self):
        self.left_heap = []  # max heap
        self.right_heap = []  # min heap

    def addNum(self, num: int) -> None:
        if self.left_heap == []:
            heapq.heappush(self.left_heap, -num)
            return

        m = -self.left_heap[0]
        if num <= m:
            heapq.heappush(self.left_heap, -num)
        else:
            heapq.heappush(self.right_heap, num)

        self.rebalance()

    def rebalance(self):
        if len(self.left_heap) < len(self.right_heap):
            heapq.heappush(self.left_heap, -heapq.heappop(self.right_heap))

        if len(self.left_heap) > len(self.right_heap) + 1:
            heapq.heappush(self.right_heap, -heapq.heappop(self.left_heap))

    def findMedian(self) -> float:
        if len(self.left_heap) > len(self.right_heap):
            return -self.left_heap[0]

        return (-self.left_heap[0] + self.right_heap[0]) / 2
```
