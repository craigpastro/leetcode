# 36. Valid Sudoku

Medium

Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be
validated according to the following rules:

- Each row must contain the digits 1-9 without repetition.
- Each column must contain the digits 1-9 without repetition.
- Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9
  without repetition.

Note:

- A Sudoku board (partially filled) could be valid but is not necessarily
  solvable.
- Only the filled cells need to be validated according to the mentioned rules.

```python
FULL_BLOCK = set(map(lambda x: str(x), range(1, 10)))


class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:
        return check_rows(board) and check_cols(board) and check_boxes(board)


# Check only 1-9 without repetition
def verify(block: List[str]) -> bool:
    no_dots = list(filter(lambda x: x != ".", block))
    s = set(no_dots)

    if len(s) != len(no_dots) or not (s <= FULL_BLOCK):
        return False

    return True


def check_rows(board: List[List[str]]) -> bool:
    for row in board:
        if not verify(row):
            return False

    return True


def check_cols(board: List[List[str]]) -> bool:
    l = len(board)
    for i in range(l):
        col = []
        for j in range(l):
            col.append(board[j][i])

        if not verify(col):
            return False

    return True


def check_boxes(board: List[List[str]]) -> bool:
    for i in [0, 3, 6]:
        for j in [0, 3, 6]:
            box = []
            for x in range(3):
                for y in range(3):
                    box.append(board[i + x][j + y])
            if not verify(box):
                return False

    return True
```
