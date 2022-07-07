# 292. Nim Game
# Easy
#
# You are playing the following Nim Game with your friend:
#
# - Initially, there is a heap of stones on the table.
# - You and your friend will alternate taking turns, and you go first.
# - On each turn, the person whose turn it is will remove 1 to 3 stones from
#   the heap.
# - The one who removes the last stone is the winner.
#
# Given n, the number of stones in the heap, return true if you can win the
# game assuming both you and your friend play optimally, otherwise return
# false.

def can_win_nim(n)
  n % 4 != 0
end

puts can_win_nim(4) # false
puts can_win_nim(2) # true
puts can_win_nim(1) # true
