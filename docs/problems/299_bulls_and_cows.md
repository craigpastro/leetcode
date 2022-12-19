# 299. Bulls and Cows

Medium

You are playing the Bulls and Cows game with your friend.

You write down a secret number and ask your friend to guess what the number is. When your friend makes a guess, you provide a hint with the following info:

- The number of "bulls", which are digits in the guess that are in the correct position.
- The number of "cows", which are digits in the guess that are in your secret number but are located in the wrong position. Specifically, the non-bull digits in the guess that could be rearranged such that they become bulls.

Given the secret number secret and your friend's guess guess, return the hint for your friend's guess.

The hint should be formatted as "xAyB", where x is the number of bulls and y is the number of cows. Note that both secret and guess may contain duplicate digits.

```python
class Solution:
    def getHint(self, secret: str, guess: str) -> str:
        bulls, cows = 0, 0
        seen = [0] * 10

        for i in range(len(secret)):
            s, g = int(secret[i]), int(guess[i])

            if s == g:
                bulls += 1
            else:
                if seen[s] < 0:
                    cows += 1
                if seen[g] > 0:
                    cows += 1
                seen[s] += 1
                seen[g] -= 1

        return f"{bulls}A{cows}B"
```
