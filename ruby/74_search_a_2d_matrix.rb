# 74. Search a 2D Matrix
# Medium
#
# Write an efficient algorithm that searches for a value in an m x n matrix.
# This matrix has the following properties:
#
# - Integers in each row are sorted from left to right.
# - The first integer of each row is greater than the last integer of the
#   previous row.

def search_matrix(matrix, target)
  !matrix.flatten.index(target).nil?
end

puts search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]],  3) # true
puts search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13) # false
