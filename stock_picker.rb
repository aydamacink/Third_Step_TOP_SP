


  def stock_picker(prices)
    answer = []
    price_hash = ((0...prices.size).zip prices).to_h
    max = prices[1..-1].max
    selling_day = price_hash.key(max)
    min = prices[0..selling_day].min
    buying_day = price_hash.key(min)
    answer.push(buying_day)
    answer.push(selling_day)
    puts answer
  end
