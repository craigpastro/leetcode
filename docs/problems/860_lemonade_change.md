# 860. Lemonade Change

Easy

At a lemonade stand, each lemonade costs $5. Customers are standing in a queue
to buy from you and order one at a time (in the order specified by bills). Each
customer will only buy one lemonade and pay with either a $5, $10, or $20 bill.
You must provide the correct change to each customer so that the net transaction
is that the customer pays $5.

Note that you do not have any change in hand at first.

Given an integer array bills where bills[i] is the bill the ith customer pays,
return true if you can provide every customer with the correct change, or false
otherwise.

## Solution

```python
class Solution:
    def lemonadeChange(self, bills: List[int]) -> bool:
        monies = {5:0, 10:0, 20:0}
        
        for bill in bills:
            match bill:
                case 5:
                    monies[5] += 1
                case 10:
                    monies[10] += 1
                    monies[5] -= 1
                case 20:
                    monies[20] += 1
                    if monies[10] > 0:
                        monies[10] -= 1
                        monies[5] -= 1
                    else:
                        monies[5] -= 3
            if monies[5] < 0:
                return False
        
        return True
```
