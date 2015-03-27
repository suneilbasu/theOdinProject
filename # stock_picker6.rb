# stock_picker6.rb
sp =[17,3,11]
biggest = 0
buy = 0
sell = 0

sp.each_with_index do|n,index|

	sp.each_with_index do|g,indexx|
		if index >= indexx
			checked = n-g
			if checked > biggest
				biggest = checked
				buy = indexx
				sell = index
			end
		end
end
end
puts "buy at #{buy} sell at #{sell}."