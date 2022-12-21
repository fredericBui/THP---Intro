#! /usr/bin/env ruby

require 'nokogiri'

require 'open-uri'

PAGE_URL = 'https://coinmarketcap.com/all/views/all/'.freeze

# Fetch and parse HTML document

page = Nokogiri::HTML(URI.parse(PAGE_URL).open)

# links = page.css("a")

# puts links.length

# links.each do | link |

#     puts link['href']

# end

btc_name, btc_price = [], []

page.xpath('//tbody//tr/td[3]//div').each do |node|
  btc_name.push(node.text)
end

page.xpath('//tbody//tr/td[5]//div//a//span').each do |node|
  btc_price.push(node.text)
end

btcs = btc_name.zip(btc_price)

btcs.each do |btc|
  puts "#{btc[0]} : #{btc[1]}"
end
