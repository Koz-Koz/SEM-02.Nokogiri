
require 'rubygems'
require 'nokogiri'   
require 'open-uri'

PAGE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"

# 1/ récupérer les données du document html dans une variable 

def get_urls()

	page = Nokogiri::HTML(open(PAGE_URL))

	tab_url = page.css("a").select{|link| link['class'] == 'lientxt'} # création du tab_url + méthode .select pour cibler la classe
	tab_url.each{|link| puts link['href']} # parcourir le tab_url à partir de la variable link et afficher les liens href

	tab_url.each do |link| 
		url = link['href'].sub(".","http://annuaire-des-mairies.com") # nouveau tableau / remplacer les "." par l'url général
    
    puts url
	end
end

get_urls # Ne pas mettre puts ?


 

