require 'rubygems'
require 'nokogiri'  

# If the webpage is stored as a file on your hard drive

page = Nokogiri::HTML(open("BMFWS.html"))   
puts page.class   # => Nokogiri::HTML::Document

# The Nokogiri::HTML construct takes in the opened file's contents and wraps it in a special Nokogiri data object. 

