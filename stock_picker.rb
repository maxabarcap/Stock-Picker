def stock_picker(prices)
    choice = []
    ordered = prices.sort
    lowest = ordered[0]
    if lowest == prices[-1]
        lowest = ordered[1]
        choice.push(lowest)
        lowindex = prices.index(lowest) + 1
        highest = prices[lowindex..-1].sort[-1]
        choice.push(highest)
    else
        choice.push(lowest)
        lowindex = prices.index(lowest) + 1
        highest = prices[lowindex..-1].sort[-1]
        choice.push(highest)
    end
end