require 'rubygems'
require 'nokogiri'
require 'open-uri'

def page
return page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
end

def get_names(page)
crypto_names = page.xpath('//*[@class="cmc-table-row"]//td[3]/div').map {|name|name = name.text}
return crypto_names
end

def get_currencies(page)
crypto_currencies = page.xpath('//*[@class="cmc-table-row"]//td[5]/div').map {|currency|currency = currency.text}
return crypto_currencies
end

def crypto_scrapper(crypto_names, crypto_currencies)
hash_crypto = get_names(page).zip(get_currencies(page)).map{|x|[x].to_h}.join(',')
puts hash_crypto
return hash_crypto
end

def perform
crypto_names = get_names(page)
crypto_currencies = get_currencies(page)
hash_crypto = crypto_scrapper(crypto_names, crypto_currencies)
end

perform
