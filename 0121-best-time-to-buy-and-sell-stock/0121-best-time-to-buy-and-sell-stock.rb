# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  buy_day = 0
  sell_day = buy_day + 1
  
  while sell_day < prices.size
    if prices[buy_day] >= prices[sell_day]
      buy_day = sell_day
      sell_day += 1
      next
    end
    
    tmp_max_profit = prices[sell_day] - prices[buy_day]
    
    max_profit = [max_profit, tmp_max_profit].max
    sell_day += 1
  end
  
  max_profit
end