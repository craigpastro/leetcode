# 498. Diagonal Traverse
# Medium
#
# Given an m x n matrix mat, return an array of all the elements of the array
# in a zig-zag diagonal order.
#
# Example:
# [[1, 2, 3],
#  [4, 5, 6],
#  [7, 8, 9]]  -->  [1, 2, 4, 7, 5, 3, 6, 8, 9]

def find_diagonal_order(mat)
  rows = mat.size
  cols = mat[0].size
  res = []
  down = false

  (0...cols).each do |c|
    diag = []
    (0...[c + 1, rows].min).each do |r|
      diag << mat[r][c - r]
    end
    res << if down
             diag
           else
             diag.reverse
           end
    down = !down
  end

  (1...rows).each do |r|
    diag = []
    (0...[rows - r, cols].min).each do |c|
      diag << mat[r + c][cols - 1 - c]
    end
    res << if down
             diag
           else
             diag.reverse
           end
    down = !down
  end

  res.flatten
end

p find_diagonal_order([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
p find_diagonal_order([[1, 2], [3, 4]])
p find_diagonal_order([[1, 2, 3], [4, 5, 6]])
p find_diagonal_order([[1], [2], [3]])
p find_diagonal_order([[1], [2]])
