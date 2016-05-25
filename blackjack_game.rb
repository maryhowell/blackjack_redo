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


dealer = Dealer.new
player = Player.new

puts

dealer.deal_hand_to(player)
dealer.deal_hand_to(dealer)

puts "Dealers"
puts dealer.hand.showing + "           value: #{dealer.hand.value}"
puts
puts "Your Inital Draw"
puts player.hand.to_s  + "        value: #{player.hand.value}"

#until
while player.hit?
  dealer.hit(player)
  puts "Dealers"
  puts dealer.hand.showing + "           value: #{dealer.hand.value}"
  puts
  puts "Your cards"
  puts player.hand.to_s  + "        value: #{player.hand.value}"

    if player.hand.busted?
      puts "You bust"
      exit
    end
    if player.hand.blackjack?
      puts "you got blackjack!"
    end

  #  busted?, blackjack?, beats?
end





  # end
