require 'open-uri'
require 'nokogiri'
require 'byebug'

# Let's scrape products from https://www.worten.pt/informatica/computadores/computadores-mac

url = "https://www.worten.pt/informatica/computadores/computadores-mac"

response = open(url).read
document = Nokogiri::HTML(response)

products = []
document.search('.w-product').each do |node|
  title = node.search('.w-product__title').text
  description = node.search('.w-product__description-excerpt').text
  price = node["data-price"].to_f

  product = {
    title: title,
    description: description,
    price: price
  }

  products << product
end

p products.size

p products.first

