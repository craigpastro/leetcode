# 122. Best Time to Buy and Sell Stock II
# Easy
#
# You are given an array prices where prices[i] is the price of a given stock
# on the ith day.
#
# Find the maximum profit you can achieve. You may complete as many
# transactions as you like (i.e., buy one and sell one share of the stock
# multiple times).
#
# Note: You may not engage in multiple transactions simultaneously (i.e., you
# must sell the stock before you buy again).

def max_profit(prices)
  max_profit = 0

  (1...prices.size).each do |i|
    max_profit += prices[i] - prices[i - 1] if prices[i - 1] < prices[i]
  end

  max_profit
end
