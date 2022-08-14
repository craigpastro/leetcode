"""
204. Count Primes
Medium

Given an integer n, return the number of prime numbers that are strictly less than n.
"""

# Sieve of Eratosthenes
class Solution:
    def countPrimes(self, n: int) -> int:
        if n < 2:
            return 0

        sieve = [1] * n
        sieve[0], sieve[1] = 0, 0
        res = 0

        for i in range(2, n):
            if sieve[i] == 1:
                res += 1
                for j in range(i + i, n, i):
                    sieve[j] = 0

        return res
