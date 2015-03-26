# stock_picker1.rb
stock_picker=[17,3,6,9,15,19,6,1,10]

if stock_picker.length < 1
	puts "empty"
else 
	rangeLowest = 0
	rangeHighest = 0
	rangeDifference = rangeHighest - rangeLowest
	currrentLowest = 0
	currentHighest = 0
	currentDifference = currentHighest.to_i - currrentLowest.to_i

	stock_picker.each_with_index do |n,index|
		puts "....#{currentHighest}/#{currrentLowest}/#{currentDifference}"
		if index == 0
			puts stock_picker[0]
			rangeLowest  = stock_picker[0]
			rangeHighest = stock_picker[0]
		else
			if n > stock_picker[n-1].to_i
				currentHighest = n
				currentDifference = currentHighest - currrentLowest
				puts "#{n} is bigger than #{stock_picker[index-1]}"
				puts "the current range difference is #{rangeDifference}/#{currentDifference}"
				if currentDifference > rangeDifference
				 	rangeLowest = currrentLowest
					rangeHighest = currentHighest
				end
				if currentDifference > rangeDifference
				 	rangeLowest = currrentLowest
					rangeHighest = currentHighest
				# else
				# 	puts n
				end 
			else
			currrentLowest = n
			if currentDifference < rangeDifference
				rangeLowest = currrentLowest
				puts n
			else puts n
			end
			end
			end
		end

end
puts "the sell #{rangeHighest} and the buy #{rangeLowest}"