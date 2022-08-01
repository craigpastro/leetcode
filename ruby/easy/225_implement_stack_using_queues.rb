# 225. Implement Stack using Queues
# Easy
#
# Implement a last-in-first-out (LIFO) stack using only two queues. The
# implemented stack should support all the functions of a normal stack
# (push, top, pop, and empty).
#
# Implement the MyStack class:
# - void push(int x) Pushes element x to the top of the stack.
# - int pop() Removes the element on the top of the stack and returns it.
# - int top() Returns the element on the top of the stack.
# - boolean empty() Returns true if the stack is empty, false otherwise.
#
# Notes:
# - You must use only standard operations of a queue, which means that only
#   push to back, peek/pop from front, size and is empty operations are valid.
# - Depending on your language, the queue may not be supported natively. You
#   may simulate a queue using a list or deque (double-ended queue) as long as
#   you use only a queue's standard operations.

class MyStack
  def initialize
    @left = []
    @right = []
  end

  def push(x)
    @right << x
    @right << @left.shift until @left.empty?
    @left, @right = @right, @left
  end

  def pop
    @left.shift
  end

  def top
    @left[0]
  end

  def empty
    @left.empty?
  end
end

s = MyStack.new
s.push(1)
s.push(2)
puts s.top
s.pop
puts s.top