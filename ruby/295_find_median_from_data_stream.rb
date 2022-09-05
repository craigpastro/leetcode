# 295. Find Median from Data Stream
# Hard
#
# The median is the middle value in an ordered integer list. If the size of
# the list is even, there is no middle value and the median is the mean of
# the two middle values.
#
# For example, for arr = [2,3,4], the median is 3.
# For example, for arr = [2,3], the median is (2 + 3) / 2 = 2.5.
#
# Implement the MedianFinder class:
# - MedianFinder() initializes the MedianFinder object.
# - void addNum(int num) adds the integer num from the data stream to the data
#   structure.
# - double findMedian() returns the median of all elements so far. Answers
#   within 10-5 of the actual answer will be accepted.

# MedianFinder works by using two heaps. The size of small (the max heap)
# will be either the same size as large (the mix heap) or at most one bigger.
# If the heaps are the same size the median is the average of the top values,
# otherwise it is the top of small.
class MedianFinder
  def initialize
    @small = MaxHeap.new
    @large = MinHeap.new
  end

  def add_num(val)
    if @small.size == @large.size
      @large.push(val)
      @small.push(@large.pop)
    else
      @small.push(val)
      @large.push(@small.pop)
    end
  end

  def find_median
    if @small.size == @large.size
      (@small.peek + @large.peek) / 2.0
    else
      @small.peek
    end
  end
end

class Heap
  def initialize
    @data = []
  end

  def size
    @data.length
  end

  def empty?
    @data.empty?
  end

  def peek
    @data.last
  end

  def pop
    @data.pop
  end

  def push(item)
    @data << item
    post_push
  end

  private

  def post_push
    raise NotImplementError
  end
end

class MinHeap < Heap
  private

  def post_push
    @data.sort! { |a, b| b <=> a }
  end
end

class MaxHeap < Heap
  private

  def post_push
    @data.sort! { |a, b| a <=> b }
  end
end

mf = MedianFinder.new
mf.add_num(1)
mf.add_num(2)
puts mf.find_median # 1.5
mf.add_num(3)
puts mf.find_median # 2
