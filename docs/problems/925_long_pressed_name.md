# 925. Long Pressed Name

Easy

Your friend is typing his name into a keyboard. Sometimes, when typing a
character c, the key might get long pressed, and the character will be typed 1
or more times.

You examine the typed characters of the keyboard. Return True if it is possible
that it was your friends name, with some characters (possibly none) being long
pressed.

```python
class Solution:
    def isLongPressedName(self, name: str, typed: str) -> bool:
        n = len(name)
        i = 0

        for j in range(len(typed)):
            if i < n and name[i] == typed[j]:
                i += 1
            elif j == 0 or typed[j] != typed[j - 1]:
                return False

        return i == n
```
