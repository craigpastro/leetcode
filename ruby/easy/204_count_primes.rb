# 204. Count Primes
# Easy
#
# Count the number of prime numbers less than a non-negative number, n.

# Sieve of Eratosthenes
def count_primes(n)
  sieve = Array.new(n, true)
  sieve[0] = false
  sieve[1] = false
  num_primes = 0

  (2..n).each do |i|
    next unless sieve[i] == true

    num_primes += 1
    (i..n).step(i) do |j|
      sieve[j] = false
    end
  end

  num_primes
end

puts count_primes(1000)  # 168
puts count_primes(10)    # 4
puts count_primes(0)     # 0
puts count_primes(1)     # 0
