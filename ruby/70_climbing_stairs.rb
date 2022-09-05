# 70. Climbing Stairs
# Easy
#
# You are climbing a staircase. It takes n steps to reach the top.
#
# Each time you can either climb 1 or 2 steps. In how many distinct ways can
# you climb to the top?

STORE = { 1 => 1, 2 => 2 }

def climb_stairs(n)
  return STORE[n] if STORE.has_key?(n)

  STORE[n - 1] = climb_stairs(n - 1)
  STORE[n - 2] = climb_stairs(n - 2)
  STORE[n - 1] + STORE[n - 2]
end

puts climb_stairs(2)  # 2
puts climb_stairs(3)  # 3
puts climb_stairs(50) # 20365011074
