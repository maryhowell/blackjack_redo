
require './hand'

class Player
  attr_reader :wallet, :hand

  def initialize wallet = nil, hand = Hand.new
    @wallet = wallet
    @hand = hand
  end

  def hand_new
    @hand = Hand.new
  end

  def wins (new_winnings)
    @wallet = new_winnings + wallet
  end

  def add_to_hand card
    @hand.add(card)
  end

  def broke?
    @wallet == 0
  end

end
