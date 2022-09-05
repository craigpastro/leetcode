# 155. Min Stack
# Medium
#
# Design a stack that supports push, pop, top, and retrieving the minimum
# element in constant time.
#
# Implement the MinStack class:
# - MinStack() initializes the stack object.
# - void push(val) pushes the element val onto the stack.
# - void pop() removes the element on the top of the stack.
# - int top() gets the top element of the stack.
# - int getMin() retrieves the minimum element in the stack.
#
# You must implement a solution with O(1) time complexity for each function.

class MinStack
  def initialize
    @stack = []
  end

  def push(val)
    min = @stack.last.nil? ? val : [val, @stack.last[1]].min
    @stack << [val, min]
  end

  def pop
    @stack.nil? ? nil : @stack.pop[0]
  end

  def top
    @stack.nil? ? nil : @stack.last[0]
  end

  def get_min
    @stack.nil? ? nil : @stack.last[1]
  end
end
