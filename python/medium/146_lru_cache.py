"""
146. LRU Cache
Medium

Design a data structure that follows the constraints of a Least Recently
Used (LRU) cache.

Implement the LRUCache class:

- LRUCache(int capacity) Initialize the LRU cache with positive size
capacity.
- int get(int key) Return the value of the key if the key exists, otherwise
return -1.
- void put(int key, int value) Update the value of the key if the key exists.
Otherwise, add the key-value pair to the cache. If the number of keys exceeds
the capacity from this operation, evict the least recently used key.

The functions get and put must each run in O(1) average time complexity.
"""


class LRUCache:
    def __init__(self, capacity: int):
        self.capacity = capacity
        self.dict = {}
        self.list = LinkedList()

    def get(self, key: int) -> int:
        if key not in self.dict:
            return -1

        node = self.dict[key]
        self.list.move_to_head(node)
        return self.list.head.val

    def put(self, key: int, value: int) -> None:
        if key in self.dict:
            node = self.dict[key]
            node.val = value
            self.list.move_to_head(node)
            return

        if len(self.dict) >= self.capacity:
            node = self.list.tail
            del self.dict[node.key]
            self.list.delete(node)

        node = Node(key, value)
        self.list.insert_head(node)
        self.dict[key] = node


class Node:
    def __init__(self, key=0, val=0, prev=None, next=None):
        self.key = key
        self.val = val
        self.prev = prev
        self.next = next


class LinkedList:
    def __init__(self):
        self.head = None
        self.tail = None

    def insert_head(self, node):
        if self.head is None:
            self.tail = node
        else:
            node.next = self.head
            self.head.prev = node

        self.head = node

    def move_to_head(self, node):
        if node == self.head or node is None:
            return

        self.delete(node)
        self.insert_head(node)

    def delete(self, node):
        if node is None:
            return

        if node.prev is not None:
            node.prev.next = node.next

        if node.next is not None:
            node.next.prev = node.prev

        if node == self.head:
            self.head = node.next

        if node == self.tail:
            self.tail = node.prev

        del node

    def array(self):
        res = []
        curr = self.head
        while curr is not None:
            res.append((curr.key, curr.val))
            curr = curr.next
        return res


l = LRUCache(10)
l.put(*[10, 13])
l.put(*[3, 17])
l.put(*[6, 11])
l.put(*[10, 5])
l.put(*[9, 10])
l.get(*[13])
l.put(*[2, 19])
l.get(*[2])
l.get(*[3])
l.put(*[5, 25])
l.get(*[8])
l.put(*[9, 22])
l.put(*[5, 5])
l.put(*[1, 30])
l.get(*[11])
l.put(*[9, 12])
l.get(*[7])
l.get(*[5])
l.get(*[8])
l.get(*[9])
l.put(*[4, 30])
l.put(*[9, 3])
l.get(*[9])
l.get(*[10])
l.get(*[10])
l.put(*[6, 14])
l.put(*[3, 1])
l.get(*[3])
l.put(*[10, 11])
l.get(*[8])
l.put(*[2, 14])
l.get(*[1])
l.get(*[5])
l.get(*[4])
l.put(*[11, 4])
l.put(*[12, 24])
l.put(*[5, 18])
l.get(*[13])
l.put(*[7, 23])
l.get(*[8])
l.get(*[12])
l.put(*[3, 27])
l.put(*[2, 12])
l.get(*[5])
l.put(*[2, 9])
l.put(*[13, 4])
l.put(*[8, 18])
l.put(*[1, 7])
l.get(*[6])
l.put(*[9, 29])
l.put(*[8, 21])
l.get(*[5])
l.put(*[6, 30])
l.put(*[1, 12])
l.get(*[10])
l.put(*[4, 15])
l.put(*[7, 22])
l.put(*[11, 26])
l.put(*[8, 17])
l.put(*[9, 29])
l.get(*[5])
l.put(*[3, 4])
l.put(*[11, 30])
l.get(*[12])
l.put(*[4, 29])
l.get(*[3])
l.get(*[9])
l.get(*[6])
l.put(*[3, 4])
l.get(*[1])
l.get(*[10])
l.put(*[3, 29])
l.put(*[10, 28])
l.put(*[1, 20])
l.put(*[11, 13])
l.get(*[3])
l.put(*[3, 12])
l.put(*[3, 8])
l.put(*[10, 9])
l.put(*[3, 26])
l.get(*[8])
l.get(*[7])
l.get(*[5])
l.put(*[13, 17])
l.put(*[2, 27])
l.put(*[11, 15])
l.get(*[12])
l.put(*[9, 19])
l.put(*[2, 15])
l.put(*[3, 16])
l.get(*[1])
l.put(*[12, 17])
l.put(*[9, 1])
l.put(*[6, 19])
l.get(*[4])
l.get(*[5])
l.get(*[5])
l.put(*[8, 1])
l.put(*[11, 7])
l.put(*[5, 2])
l.put(*[9, 28])
l.get(*[1])
l.put(*[2, 2])
l.put(*[7, 4])
l.put(*[4, 22])
l.put(*[7, 24])
l.put(*[9, 26])
l.put(*[13, 28])
l.put(*[11, 26])
