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

links = page.css('.lientxt').map{|anchor| anchor["href"]}
return links
end 

def names_townhall
 page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
    
names = page.css('.lientxt').map{|anchor| anchor["text"]}
puts names
return names
end

# --------- Récupération des emails

def get_emails(links)
arr_links =[]
    links.each do |url|
    page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/#{url}"))
    arr_links << page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
end
puts arr_links
return arr_links
end

# ------- perform
def perform
    links = get_townhall_urls
    arr_links = get_emails(links)
    names = names_townhall
end

perform