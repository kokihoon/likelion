require 'nokogiri'
require 'rest-client'


url = 'http://info.finance.naver.com/marketindex/'
page = RestClient.get(url)
doc = Nokogiri::HTML(page)

info = doc.css('#exchangeList > li.on > a.head.usd > div > span.value').text

p info.delete(',').to_f