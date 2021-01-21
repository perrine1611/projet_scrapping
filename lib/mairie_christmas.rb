require 'nokogiri'
require 'open-uri'

# ------- Méthode pour une ville

def get_townhall_email
page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/95/avernes.html"))
email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
puts email
return email
end

# -------- Méthode pour avoir tous les emails

def get_townhall_urls
page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))

links = page.css('.lientxt')
arr_links = []

all_url = "http://annuaire-des-mairies.com"

for i in links
    i = i.to_s
    page = Nokogiri::HTML(URI.open(all_url + i.to_s[i.index('/')..i.rindex('"') - 1]))

puts page.css('p.big')
end
end

get_townhall_urls
