# CLI Controller
class GoldPrice::CLI

  attr_accessor :metal, :measurement

  def call
    puts "Welcome to Gold Price!"
    metal_menu
  end

  def metal_menu
    puts "Please enter the number of the metal you would like to see the price of:"
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
    puts "Please enter the number of the measurement you would like to use:"
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
    @prices = GoldPrice::Price.prices
    price = @prices[0]
      if @metal == 1 && @measurement == 1
        puts "#{price.gold_by_gram}"
      elsif @metal == 1 && @measurement == 2
        puts "#{price.gold_by_ounce}"
      elsif @metal == 2 && @measurement == 1
        puts "#{price.silver_by_gram}"
      elsif @metal == 2 && @measurement == 2
        puts "#{price.silver_by_ounce}"
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
