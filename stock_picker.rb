def stock_picker (array)
	best_profit = 0
	buy_day = 0
	sell_day = 0

	array[0..-2].each do |buy|
		next_day = array.index(buy) + 1
		array[next_day..array.size].each do |sell|
			profit = sell - buy

			if profit > best_profit
				best_profit = profit
				profit = 0
				sell_day = array.index(sell)
				buy_day = array.index(buy)
			end
		end
		
	end
	puts "Best day to buy is #{buy_day} and the best day to sell is #{sell_day} for a profit of $#{best_profit}"

end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
