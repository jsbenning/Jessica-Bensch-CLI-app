require 'pry'
class GoldPrice::Price

  attr_accessor :by_gram, :by_ounce

  def self.prices(metal)
    url = "https://www.apmex.com/spotprices/#{metal}"
    doc = Nokogiri::HTML(open(url))
    prices = self.new
    price_array = doc.css(".item-ask").text.split("$")
    prices.by_gram = price_array[2]
    prices.by_ounce = price_array[1]
    prices
  end
end
