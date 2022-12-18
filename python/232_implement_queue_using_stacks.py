"""
# 232. Implement Queue using Stacks

Easy

Implement a first in first out (FIFO) queue using only two stacks. The implemented queue should support all the functions of a normal queue (push, peek, pop, and empty).

Implement the MyQueue class:
- `void push(int x)` Pushes element x to the back of the queue.
- `int pop()` Removes the element from the front of the queue and returns it.
- `int peek()` Returns the element at the front of the queue.
- `boolean empty()` Returns true if the queue is empty, false otherwise.

Notes:
- You must use only standard operations of a stack, which means only push to top, peek/pop from top, size, and is empty operations are valid.
- Depending on your language, the stack may not be supported natively. You may simulate a stack using a list or deque (double-ended queue) as long as you use only a stack's standard operations.

Follow-up: Can you implement the queue such that each operation is amortized O(1) time complexity? In other words, performing n operations will take overall O(n) time even if one of those operations may take longer.
"""


class MyQueue:
    def __init__(self):
        self.left = []
        self.right = []

    def push(self, x: int) -> None:
        self.left.append(x)

    def pop(self) -> int:
        self.rebalance()
        return self.right.pop()

    def peek(self) -> int:
        self.rebalance()
        return self.right[len(self.right) - 1]

    def empty(self) -> bool:
        return len(self.left) == 0 and len(self.right) == 0

    def rebalance(self) -> None:
        if len(self.right) == 0:
            while len(self.left) > 0:
                self.right.append(self.left.pop())
