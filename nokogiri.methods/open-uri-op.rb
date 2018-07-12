# If the webpage is live on a remote site, like http://en.wikipedia.org/, 
# then you'll want to include the open-uri module

require 'rubygems'
require 'nokogiri'
require 'open-uri'

# encapsulate all the work of making a HTTP request into the open method :

page = Nokogiri::HTML(open("http://en.wikipedia.org/")) 
puts page.class   

# => Nokogiri::HTML::Document