class GoldPrice::Price

  attr_accessor :gold_by_gram, :gold_by_ounce, :silver_by_gram, :silver_by_ounce

  def self.silver_prices
    doc = Nokogiri::HTML(open("https://www.apmex.com/spotprices/silver-prices"))
    binding.pry
    todays_prices = self.new
    todays_prices.gold_by_gram = "$1"
    todays_prices.gold_by_ounce = "$2"
    todays_prices.silver_by_gram = "$3"
    todays_prices.silver_by_ounce = "$4"

   [todays_prices]

  end

end
