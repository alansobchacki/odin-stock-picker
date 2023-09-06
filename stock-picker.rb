def stock_picker(stock)
    math = []
    day = 3
        for i in (day + 1)..stock.length - 1
            math.push( stock[i] - stock[day] )
        end
    p math
end

stock_picker([17,3,6,9,15,8,6,1,10])