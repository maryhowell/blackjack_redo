require './deck'
require './hand'

class Dealer
attr_reader :deck

  def initialize
    @deck = Deck.new
  end

  def deal_hand_to player
    player.add_to_hand(@deck.draw)
    player.add_to_hand(@deck.draw)
  end

  def hit player
    player.add_to_hand(@deck.draw)
  end

end
