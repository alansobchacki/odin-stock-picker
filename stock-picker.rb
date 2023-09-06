def stock_picker(stock)
    best_buy_day = 0
    best_sell_day = 0
    max_profit = 0
    best_operation_possible = []

    for buy_day in 0..stock.length - 1
      for sell_day in (buy_day + 1)..stock.length - 1
        profit = stock[sell_day] - stock[buy_day]
        if profit > max_profit
          max_profit = profit
          best_buy_day = buy_day
          best_sell_day = sell_day
        end
      end
    end
  
    if max_profit > 0
      p best_operation_possible.push(best_buy_day, best_sell_day)
      puts "Buy on day #{best_buy_day} (#{stock[best_buy_day]}), sell on day #{best_sell_day} (#{stock[best_sell_day]})"
      puts "Maximum profit: #{max_profit}"
    else
      puts "No profitable trade available."
    end
  end
  
stock_picker([17,3,6,9,15,8,6,1,10,26,1,99])
  