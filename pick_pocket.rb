# frozen_string_literal: true

# stock-picker
def stock_picker(prices, buy_sell = [0, 0], buy_index = 0, profit = 0)
  buy_price = prices[buy_index]
  prices.each_with_index do |price, index|
    if price < buy_price
      buy_price = price
      buy_index = index
    end
    if price - buy_price > profit
      profit = price - buy_price
      buy_sell = [buy_index, index]
    end
  end
  buy_sell
end

prices_by_day = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].shuffle

p prices_by_day

p stock_picker(prices_by_day)
