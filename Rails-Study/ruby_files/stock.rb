require 'stock_quote'
# puts "Hack Your Life"
# stock = StockQuote::Stock.quote("aapl, amzn, fb, googl")
#
# stock.each do |price|
#   puts price.latest_price
# end
# # puts stock.latest_price
#
# stock = StockQuote::Stock.quote("aapl")
# puts stock.company_name, stock.latest_price
print '원하는 NASDAQ 주식의 심볼을 입력하세요: '
input = gets.chomp
stock = StockQuote::Stock.quote(input)
puts stock.company_name, stock.latest_price