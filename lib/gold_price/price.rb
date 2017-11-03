class GoldPrice::Price

  attr_accessor :gold_by_gram, :gold_by_ounce, :silver_by_gram, :silver_by_ounce

  def self.silver_prices
    doc = Nokogiri::HTML(open("https://www.apmex.com/spotprices/silver-prices"))
    silver_price_array = doc.css(".item-ask").text.split("$")
    todays_silver_prices = self.new
    todays_silver_prices.silver_by_gram = silver_price_array[2]
    todays_silver_prices.silver_by_ounce = silver_price_array[1]
    [todays_silver_prices]
  end

  def self.gold_prices
    doc = Nokogiri::HTML(open("https://www.apmex.com/spotprices/gold-price"))
    gold_price_array = doc.css(".item-ask").text.split("$")
    todays_gold_prices = self.new
    todays_gold_prices.gold_by_gram = gold_price_array[2]
    todays_gold_prices.gold_by_ounce = gold_price_array[1]
    [todays_gold_prices]
  end
end
