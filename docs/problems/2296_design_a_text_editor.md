# 2296. Design a Text Editor

Hard

Design a text editor with a cursor that can do the following:

- Add text to where the cursor is.
- Delete text from where the cursor is (simulating the backspace key).
- Move the cursor either left or right.

When deleting text, only characters to the left of the cursor will be deleted.
The cursor will also remain within the actual text and cannot be moved beyond
it. More formally, we have that 0 <= cursor.position <= currentText.length
always holds.

Implement the TextEditor class:

- TextEditor() Initializes the object with empty text.
- void addText(string text) Appends text to where the cursor is. The cursor ends
  to the right of text.
- int deleteText(int k) Deletes k characters to the left of the cursor. Returns
  the number of characters actually deleted.
- string cursorLeft(int k) Moves the cursor to the left k times. Returns the
  last min(10, len) characters to the left of the cursor, where len is the
  number of characters to the left of the cursor.
- string cursorRight(int k) Moves the cursor to the right k times. Returns the
  last min(10, len) characters to the left of the cursor, where len is the
  number of characters to the left of the cursor.

```python
class TextEditor:
    def __init__(self):
        self.buffer = []
        self.stack = []

    def addText(self, text: str) -> None:
        self.buffer.extend([c for c in text])

    def deleteText(self, k: int) -> int:
        l = len(self.buffer)
        num_deleted = min(l, k)
        self.buffer = self.buffer[: l - num_deleted]
        return num_deleted

    def cursorLeft(self, k: int) -> str:
        while len(self.buffer) > 0 and k > 0:
            self.stack.append(self.buffer.pop())
            k -= 1

        return "".join(self.buffer[max(len(self.buffer) - 10, 0) :])

    def cursorRight(self, k: int) -> str:
        while len(self.stack) > 0 and k > 0:
            self.buffer.append(self.stack.pop())
            k -= 1

        return "".join(self.buffer[max(len(self.buffer) - 10, 0) :])
```
