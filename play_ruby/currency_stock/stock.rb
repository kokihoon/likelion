require 'stock_quote'

print('NASDAQ 주식회사 심볼을 입력해주세요(띄어쓰기로 복수 입력 가능): ')
company = gets.chomp
companies = company.split
companies.each do |company|
    stock = StockQuote::Stock.quote(company)
    puts "#{stock.name} => $ #{stock.l}"
end