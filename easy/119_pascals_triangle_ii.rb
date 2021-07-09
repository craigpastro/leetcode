# 119. Pascal's Triangle II
# Easy
#
# Given an integer rowIndex, return the rowIndexth (0-indexed) row of the
# Pascal's triangle.
#
# In Pascal's triangle, each number is the sum of the two numbers directly
# above it.

def get_row(row_index)
  return [1] if row_index.zero?

  res = [1, 1]
  (1...row_index).each do |_|
    res = [1].concat(res.each_cons(2).map(&:sum), [1])
  end

  res
end

p get_row(3) # [1, 3, 3, 1]
p get_row(0) # [1]
p get_row(1) # [1, 1]
