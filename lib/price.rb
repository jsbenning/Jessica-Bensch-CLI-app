class GoldPrice::Price

  attr_accessor :gold_by_gram, :gold_by_ounce, :silver_by_gram, :silver_by_ounce

  def self.prices
    prices = self.new
    prices.gold_by_gram = "$1"
    prices.gold_by_ounce = "$2"
    prices.silver_by_gram = "$3"
    prices.silver_by_ounce = "$4"

  end

end
