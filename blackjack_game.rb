require "pry"
require './card'
require './deck'
require './hand'
require './player'
require './dealer'


game_over = false

puts "Welcome to BlackJack"
puts "How much would you like to start with?"
print "Starting Money: "
bet = gets.chomp.to_i
@wallet = bet

 until game_over
   dealer = Dealer.new
   player = Player.new
 end
binding.pry
