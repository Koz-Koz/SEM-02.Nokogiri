require 'rubygems'
require 'nokogiri'   
require 'open-uri'

PAGE_URL = "http://annuaire-des-mairies.com/95/vaureal.html"

def get_email()

	page = Nokogiri::HTML(open(PAGE_URL))

		page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").each do |i|
			puts i.text
		end
	end

get_email

 