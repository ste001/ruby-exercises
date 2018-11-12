def stock_picker(prices)
  best_pair = [0, 0]
  profit = 9999
  i = 0
  j = 0
  while (i < prices.length)
    j = i + 1
    while (j < prices.length)
      if (prices[i] - prices[j]) < profit
        best_pair[0] = i
        best_pair[1] = j
        profit = prices[i] - prices[j]
      end
      j = j + 1
    end
    i = i + 1
  end
  best_pair
end