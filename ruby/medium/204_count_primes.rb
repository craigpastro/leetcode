# 204. Count Primes
# Medium
#
# Given an integer n, return the number of prime numbers that are strictly less than n.

# Sieve of Eratosthenes
def count_primes(n)
  sieve = Array.new(n, 1)
  sieve[0] = 0
  sieve[1] = 0
  res = 0

  (2..n).each do |i|
    next unless sieve[i] == 1
      
    res += 1
    (i**2..n).step(i) do |j|
      sieve[j] = 0
    end
  end

  res
end

puts count_primes(1000)  # 168
puts count_primes(10)    # 4
puts count_primes(0)     # 0
puts count_primes(1)     # 0
