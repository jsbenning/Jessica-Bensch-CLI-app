# CLI Controller
class GoldPrice::CLI

  attr_accessor :metal, :measurement

  def call
    puts "Welcome to Gold Price!"
    metal_menu
    price
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
  end

  def price
    @price = GoldPrice::Price.today
      if @metal == 1 && @measurement == 1
        puts "#{@price}"
      elsif @metal == 1 && @measurement == 2
        puts "The price of Gold in Ounces"
      elsif @metal == 2 && @measurement == 1
        puts "The price of Silver in Grams"
      elsif @metal == 2 && @measurement == 2
        puts "The price of Silver in Ounces"
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
