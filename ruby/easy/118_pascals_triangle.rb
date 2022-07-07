# 118. Pascal's Triangle
# Easy
#
# Given an integer numRows, return the first numRows of Pascal's triangle.
#
# In Pascal's triangle, each number is the sum of the two numbers directly
# above it.

def generate(num_rows)
  return [[1]] if num_rows == 1

  res = [[1], [1, 1]]
  (3..num_rows).each do |_|
    res << [1].concat(res.last.each_cons(2).map(&:sum), [1])
  end

  res
end

p generate(5) # [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
