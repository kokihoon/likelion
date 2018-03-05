require 'stock_quote'
require 'eu_central_bank'

from = 'USD'
to = 'KRW'

bank = EuCentralBank.new
bank.update_rates

print('NASDAQ 주식회사 심볼을 입력해주세요(띄어쓰기로 복수 입력 가능): ')

company = gets.chomp
companies = company.split
companies.each do |company|
    stock = StockQuote::Stock.quote(company)
    begin
        if stock.l.include?","
            stock.l = stock.l.delete(',')
        end
    rescue
        puts "잘못입력하셨습니다.!!"
        exit
    end
    result = bank.exchange(stock.l, from, to)
    puts "#{stock.name} =>  #{stock.l} #{from} => #{result} #{to} "
end