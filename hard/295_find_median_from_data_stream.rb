class MedianFinder
  def initialize
    @large = MinHeap.new
    @small = MaxHeap.new
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
