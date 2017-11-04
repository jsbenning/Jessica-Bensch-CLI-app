# CLI Controller
class GoldPrice::CLI

  attr_accessor :metal, :measurement

  def call
    puts "Welcome to Gold Price!"
    puts "__*__"
    metal_menu
  end

  def metal_menu
    puts "Please enter the number of the metal you would like to see the price of and press enter:"
    puts "1. Gold"
    puts "2. Silver"
    @metal = gets.strip.to_i

    if @metal < 1 || @metal > 2
      puts "Please enter a valid selection."
      metal_menu
    end
    measurement_menu
  end

  def measurement_menu
    puts "Please enter the number of the measurement you would like to use and press enter:"
    puts "1. Grams"
    puts "2. Ounces"
    @measurement = gets.strip.to_i

    if @measurement < 1 || @measurement > 2
      puts "Please enter a valid selection."
      measurement_menu
    end
    price
  end

  def price
    @silver_prices = GoldPrice::Price.silver_prices
    @gold_prices = GoldPrice::Price.gold_prices
    silver_price = @silver_prices[0]
    gold_price = @gold_prices[0]
      if @metal == 1 && @measurement == 1
        puts "Today the price of gold per gram is $#{gold_price.gold_by_gram} USD."
        puts "__*__"
      elsif @metal == 1 && @measurement == 2
        puts "Today the price of gold per ounce is $#{gold_price.gold_by_ounce} USD."
        puts "__*__"
      elsif @metal == 2 && @measurement == 1
        puts "Today the price of silver per gram is $#{silver_price.silver_by_gram} USD."
        puts "__*__"
      elsif @metal == 2 && @measurement == 2
        puts "Today the price of silver per ounce is $#{silver_price.silver_by_ounce} USD."
        puts "__*__"
      end


    puts "Would you like to see another price?"
    input = gets.strip.upcase
    if input == "Y" || input == "YES"
      metal_menu
    else
      goodbye
    end
  end

  def goodbye
    puts "See you tomorrow! Stay Golden."
  end

end
