# 146. LRU Cache

Medium

Design a data structure that follows the constraints of a Least Recently Used (LRU) cache.

Implement the `LRUCache` class:

- `LRUCache(int capacity)` Initialize the LRU cache with positive size capacity.
- `int get(int key)` Return the value of the key if the key exists, otherwise return -1.
- `void put(int key, int value)` Update the value of the key if the key exists. Otherwise, add the key-value pair to the cache. If the number of keys exceeds the capacity from this operation, evict the least recently used key.

The functions`get` and `put` must each run in O(1) average time complexity.

```python
NOT_IN_CACHE = -1


class LRUCache:
    def __init__(self, capacity: int):
        self.capacity = capacity
        self.key_to_node = {}
        self.list = LinkedList()

    def get(self, key: int) -> int:
        if key not in self.key_to_node:
            return NOT_IN_CACHE

        node = self.key_to_node[key]
        self.list.delete(node)
        self.list.insert_at_head(node)
        return node.val

    def put(self, key: int, value: int) -> None:
        if key in self.key_to_node:
            node = self.key_to_node[key]
            node.val = value
            self.list.delete(node)
            self.list.insert_at_head(node)
            return

        if len(self.key_to_node) >= self.capacity:
            node = self.list.tail.prev
            del self.key_to_node[node.key]
            self.list.delete(node)

        node = Node(key, value)
        self.list.insert_at_head(node)
        self.key_to_node[key] = node


class Node:
    def __init__(self, key, val, prev=None, next=None):
        self.key = key
        self.val = val
        self.prev = prev
        self.next = next


class LinkedList:
    def __init__(self):
        self.head = Node("head", "head")
        self.tail = Node("tail", "tail")
        self.head.next = self.tail
        self.tail.prev = self.head

    def insert_at_head(self, node):
        node.next = self.head.next
        self.head.next.prev = node
        self.head.next = node
        node.prev = self.head

    def delete(self, node):
        node.prev.next = node.next
        node.next.prev = node.prev
```
