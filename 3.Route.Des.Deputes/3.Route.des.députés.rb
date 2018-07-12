require 'rubygems'
require 'nokogiri'   
require 'open-uri'


def names
	tab_name = []
		page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=576"))
		puts page.css("h2[class='titre_normal']").text # Afficher tous les noms députés
   end 
names