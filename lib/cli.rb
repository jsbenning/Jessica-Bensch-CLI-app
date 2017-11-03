# CLI Controller
class GoldPrice::CLI

  attr_accessor :metal

  def call
    puts "Welcome to Gold Price!"
    puts "Please enter the number of the metal you would like to see the price of:"
    puts "1. Gold"
    puts "2. Silver"
    @metal = gets.strip.to_i
    puts "Please enter the number of the measurement you would like to use:"
    puts "1. Grams"
    puts "2. Ounces"
    @measurement = gets.strip.to_i
  end

end
