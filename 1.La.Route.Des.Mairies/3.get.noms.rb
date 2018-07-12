require 'rubygems'
require 'nokogiri'   
require 'open-uri'


PAGE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"

# methode open pour ouvrir une page en ligne

def get_name()

page = Nokogiri::HTML(open(PAGE_URL))
puts page.css("a[class='lientxt']").text # Afficher tous les titres d'urls

end 

get_name