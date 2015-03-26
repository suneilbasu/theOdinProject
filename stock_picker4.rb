# stock_picker1.rb
stock_picker=[17,300,16,2339,15,19,6,2,100]

if stock_picker.length < 1
	puts "empty"
else 
	rangeLowest = 0
	rangeHighest = 0
	rangeDifference = 0
	currrentLowest = 0
	currentHighest = 0
	currentDifference = currentHighest.to_i - currrentLowest.to_i

	stock_picker.each_with_index do |n,index|
		if index == 0
			currrentLowest  = stock_picker[0]
			currentHighest = stock_picker[0]
		else
			if n > stock_picker[n-1].to_i #if this one is bigger than the one before change sell  .
				currentHighest = n
				currentDifference = currentHighest - currrentLowest
				if currentDifference > rangeDifference
				 	rangeLowest = currrentLowest
					rangeHighest = currentHighest
					rangeDifference = rangeHighest - rangeLowest

				end

			else
				currrentLowest = n # else this is the starting point/continuation of a time to buy
				currentDifference = currentHighest - currrentLowest
				if currentDifference > rangeDifference
				 	rangeLowest = currrentLowest
					rangeHighest = currentHighest
					rangeDifference = rangeHighest - rangeLowest

				end
			end
		end
	end

end
puts "buy at #{rangeLowest} and the sell at #{rangeHighest}"