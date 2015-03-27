# stock_picker6.rb
stock_picker=[280,11,300,16,239,15,19,6,2,100]

globalSell = 0
globalBuy = 0
globalDifference = 0

currentBestSell = 0
currentBestBuy = 0
currentBestSellIndex = 0
currentBestBuyIndex = 0

stock_picker.each_with_index do |n,index|
	puts n *2
end