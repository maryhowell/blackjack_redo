
require './hand'

class Player
  attr_reader :wallet, :hand

  def initialize wallet = nil, hand = Hand.new
    @wallet = wallet
    @hand = hand
  end

  def wins (new_winnings)
    @wallet = new_winnings + wallet
  end

  def broke?
    if  @wallet == 0
      true
    else
      false
    end
  end

end
