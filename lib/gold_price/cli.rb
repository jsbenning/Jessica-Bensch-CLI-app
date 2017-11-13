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

    if @metal == 1
      prices = GoldPrice::Price.prices("gold-price")
      metal = "gold"
    else
      prices = GoldPrice::Price.prices("silver-prices")
      metal = "silver"
    end

      if @measurement == 1
        puts "Today the price of #{metal} per gram is $#{prices.by_gram} USD."
        puts "__*__"
      else
        puts "Today the price of #{metal} per ounce is $#{prices.by_ounce} USD."
        puts "__*__"
      end


    puts "Would you like to see another price?"
    input = gets.strip.upcase
    if input == "Y" || input == "YES"
      metal_menu
    else
      puts "See you tomorrow! Stay Golden."
    end
  end

end
