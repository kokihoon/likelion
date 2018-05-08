require 'stock_quote'
require 'eu_central_bank'

input = gets.chomp
stocks = StockQuote::Stock.quote(input)

bank = EuCentralBank.new

bank.update_rates

stocks.each do |stock|
  puts stock.company_name, bank.exchange(stock.latest_price,"USD", "KRW")
end