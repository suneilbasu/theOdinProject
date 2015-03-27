# stock_picker1.rb
stock_picker=[280,11,300,16,239,15,19,6,2,100]

if stock_picker.length < 1
	puts "empty"
else 
	rangeLowest = 0
	rangeHighest = 0
	rangeDifference = 0

	currrentLowest = 0
	currentLowestIndex = 0
	currentHighest = 0
	currentHighestIndex = 0
	currentDifference = currentHighest.to_i - currrentLowest.to_i

	stock_picker.each_with_index do |n,index|
		if index == 0
			currrentLowest  = stock_picker[0]
			currentHighest = stock_picker[0]
			currentDifference = 0
		elsif n > stock_picker[index-1].to_i #if this one is bigger than the one before, it might be chance to sell  .
				currentHighest = n
				currentDifference = currentHighest - currrentLowest
				if currentDifference > rangeDifference
				 	rangeLowest = currrentLowest
					rangeHighest = currentHighest
					rangeDifference = rangeHighest - rangeLowest
			
			else
					currentHighest = n
					currentDifference = 0
					puts index				
				# currrentLowest = n # else this is the starting point/continuation of a time to buy
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