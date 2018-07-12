require 'rubygems'
require 'nokogiri'   
require 'open-uri'


def names

tab_name = []

    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    puts page.css("a[class='lientxt']").text # Afficher tous les titres d'urls

end 

def scrapping

array = []

	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    tab_url = page.css("a").select{|link| link['class'] == 'lientxt'} # création du tab_url + méthode .select pour cibler la classe

    tab_url.each do |link| 
	    url = link['href'].sub(".","http://annuaire-des-mairies.com") # nouveau tableau / remplacer les "." par l'url général
        array << url
    end

    array.each do |i|
    	page = Nokogiri::HTML(open(i))
    	puts page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
  end
end

scrapping