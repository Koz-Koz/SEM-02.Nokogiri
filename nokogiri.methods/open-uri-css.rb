# -- # Nokogiri document object's css method # -- #

require 'rubygems'
require 'nokogiri'   
require 'open-uri'

PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"

# methode open pour ouvrir une page en ligne
page = Nokogiri::HTML(open(PAGE_URL))

# sélectionner les éléments

puts page.css("title").text # => My webpage

puts page.css("title")[0].name   # => title
puts page.css("title")[0].text   # => My webpage

# extracting URL's from links

links = page.css("a")
puts links.length   # => 6

# Limiter la sélection - > Enumerable select method

