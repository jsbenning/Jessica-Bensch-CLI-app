class GoldPrice::price

  attr_accessor :price_per_gram, :price_per_ounce, :price_change

  def self.today
    gold = self.new
    gold.price_per_gram =
    gold.price_per_ounce =
    gold.price_change =

    silver = self.new
    silver.price_per_gram =
    silver.price_per_ounce =
    silver.price_change =

  end

end
