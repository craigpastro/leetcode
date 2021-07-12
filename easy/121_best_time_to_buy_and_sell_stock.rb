# 121. Best Time to Buy and Sell Stock
# Easy
#
# You are given an array prices where prices[i] is the price of a given stock
# on the ith day.
#
# You want to maximize your profit by choosing a single day to buy one stock
# and choosing a different day in the future to sell that stock.
#
# Return the maximum profit you can achieve from this transaction. If you
# cannot achieve any profit, return 0.

def max_profit(prices)
  min_price = prices[0]
  max_profit = 0

  (1...prices.size).each do |i|
    if prices[i] <= min_price
      min_price = prices[i]
    elsif prices[i] - min_price > max_profit
      max_profit = prices[i] - min_price
    end
  end

  max_profit
end

puts max_profit([7, 1, 5, 3, 6, 4]) # 5
puts max_profit([7, 6, 4, 3, 1])    # 0
