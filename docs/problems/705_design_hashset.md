# 705. Design HashSet

Easy

Design a HashSet without using any built-in hash table libraries.

Implement `MyHashSet` class:

- `void add(key)` Inserts the value key into the HashSet.
- `bool contains(key)` Returns whether the value key exists in the HashSet or
  not.
- `void remove(key)` Removes the value key in the HashSet. If key does not exist
  in the HashSet, do nothing.

## Solution

```python
class MyHashSet:
    def __init__(self):
        self.m = 100
        self.base = [[] for _ in range(self.m)]
        self.hash = lambda x: x % self.m

    def add(self, key: int) -> None:
        hashed = self.hash(key)
        if key not in self.base[hashed]:
            self.base[hashed].append(key)

    def remove(self, key: int) -> None:
        hashed = self.hash(key)
        if key in self.base[hashed]:
            self.base[hashed].remove(key)

    def contains(self, key: int) -> bool:
        hashed = self.hash(key)
        if key in self.base[hashed]:
            return True
        return False
```
