# 36. Valid Sudoku
# Medium
#
# Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be
# validated according to the following rules:
#
# - Each row must contain the digits 1-9 without repetition.
# - Each column must contain the digits 1-9 without repetition.
# - Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9
#   without repetition.
#
# Note:
# - A Sudoku board (partially filled) could be valid but is not necessarily
#   solvable.
# - Only the filled cells need to be validated according to the mentioned
#   rules.

require 'set'

FULL_BLOCK = Set.new(%w[1 2 3 4 5 6 7 8 9])

def is_valid_sudoku(board)
  check_rows(board) && check_cols(board) && check_boxes(board)
end

# Check only 1-9 without repetition
def verify(block)
  filtered = block.filter { |x| x != '.' }
  s = Set.new(filtered)

  if s.size != filtered.size || !s.subset?(FULL_BLOCK)
    false
  else
    true
  end
end

def check_rows(board)
  board.each do |row|
    return false unless verify(row)
  end

  true
end

def check_cols(board)
  (0...board.size).each do |i|
    col = []
    (0...board.size).each do |j|
      col << board[j][i]
    end
    return false unless verify(col)
  end

  true
end

def check_boxes(board)
  [0, 3, 6].each do |i|
    [0, 3, 6].each do |j|
      box = []
      (0...3).each do |x|
        (0...3).each do |y|
          box << board[i + x][j + y]
        end
      end
      return false unless verify(box)
    end
  end

  true
end
