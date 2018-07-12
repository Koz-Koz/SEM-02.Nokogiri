
require 'rubygems'
require 'nokogiri'
require 'restclient' # install & add the gem

page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/"))   
puts page.class   # => Nokogiri::HTML::Document