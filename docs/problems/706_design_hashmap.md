# 706. Design HashMap

Easy

Design a HashMap without using any built-in hash table libraries.

Implement the `MyHashMap` class:

- `MyHashMap()` initializes the object with an empty map.
- `void put(int key, int value)` inserts a `(key, value)` pair into the HashMap.
  If the `key` already exists in the map, update the corresponding value.
- `int get(int key)` returns the value to which the specified `key` is mapped,
  or `-1` if this map contains no mapping for the `key`.
- `void remove(key)` removes the `key` and its corresponding value if the map
  contains the mapping for the `key`.

## Solution

```python
class MyHashMap:
    def __init__(self):
        self.arr = [-1] * (10**6 + 1)

    def put(self, key: int, value: int) -> None:
        self.arr[key] = value

    def get(self, key: int) -> int:
        if self.arr[key] != -1:
            return self.arr[key]
        return -1

    def remove(self, key: int) -> None:
        self.arr[key] = -1
```
