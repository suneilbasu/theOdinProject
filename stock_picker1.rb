# stock_picker1.rb
stock_picker=[17,3,6,9,15,8,6,1,10]
if stock_picker.length < 1
	puts "empty"
else 
lowest = stock_picker[0]
highest = 0
	for n in stock_picker
		if n > highest
			highest = n
		elsif n < lowest
			lowest = n
		end
	end
puts lowest,highest
end