require './deck'
require './hand'

class Dealer
attr_reader :deck ,:hand

  def initialize
    @deck = Deck.new
    @hand = Hand.new
  end

  def hand_new
    @hand = Hand.new
  end

  def deal_hand_to player
    player.hand_new
    player.add_to_hand(@deck.draw)
    player.add_to_hand(@deck.draw)
  end

  def hit player
    if deck.cards.count == 0
      deck.reshuffle
    end
      player.add_to_hand(@deck.draw)

  end
  
  def add_to_hand card
    @hand.add(card)
  end


end
