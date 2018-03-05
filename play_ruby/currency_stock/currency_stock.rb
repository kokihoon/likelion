require 'stock_quote'
require 'eu_central_bank'

companies = ARGV

def exchange(volume)
    bank = EuCentralBank.new
    bank.update_rates
    volume * bank.exchange(100, 'USD', 'KRW')
end

def get_stock_info(companies)
    result = {}
    companies.each do |company|
        stock = StockQuote::Stock.quote(company)
        result[stock.name] = stock.l.delete(',').to_f
    end
    return result
end

get_stock_info(companies).each do |name, price| 
    puts "#{name} 의 가격은 KRW #{exchange(price)}"
end