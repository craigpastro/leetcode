# 56. Merge Intervals
# Medium
#
# Given an array of intervals where intervals[i] = [starti, endi], merge all
# overlapping intervals, and return an array of the non-overlapping intervals
# that cover all the intervals in the input.

def merge(intervals)
  sorted = intervals.sort { |x, y| x[0] <=> y[0] }

  res = []
  cur = sorted[0]

  (1...sorted.size).each do |i|
    if cur[1] >= sorted[i][0]
      cur = [cur[0], [cur[1], sorted[i][1]].max]
    else
      res << cur
      cur = sorted[i]
    end
  end

  res << cur
  res
end

p merge([[1, 3], [2, 6], [8, 10], [15, 18]]) # [[1,6],[8,10],[15,18]]
p merge([[1, 4], [4, 5]])                    # [[1,5]]
