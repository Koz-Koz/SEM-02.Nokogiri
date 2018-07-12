require 'rubygems'
require 'nokogiri'        
require 'open-uri'

# TABLEAU DES NOMS #

def names 

	crypto_names = []
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")).css(".currency-name-container").each do |item|
	        var = item.text
	        crypto_names << var
     end

  return crypto_names

end 

# TABLEAU DES VALEURS #

def prices 

	crypto_prices = []
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")).css(".price").each do |item|
	        var = item.text
	        crypto_prices << var
	  end

    return crypto_prices
end 

# CREATION DU HASH #

hash_crypto = Hash[names.zip(prices)] # appeller les méthodes
hash_crypto.each do |names, prices|
	puts "#{names} ===> #{prices}"
end

prices




