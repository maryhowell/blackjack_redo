

class Hand
  attr_reader :cards, :hand

  def initialize
    @cards = []
    @hand = []
  end

  def add *new_cards
    @cards += new_cards
  end

  def value
    base = cards.map { |c| c.value }.reduce(:+)
    if cards.any? { |c| c.rank == :A } && base <= 11
      base + 10
    else
      base
    end
  end

  def blackjack?
    value == 21
  end

  def busted?
    value > 21
  end

  def to_s
    cards.map { |c| c.to_s }.join ", "
  end

  def showing
    cards.first.to_s
  end

  def beats? otherhand
    if !busted? && !otherhand.busted?
      if value == otherhand.value
        false
      else
        value > otherhand.value
      end

    elsif busted? && !otherhand.busted?
      false
    else
      true
    end
  end

  def can_tie?
    value == otherhand
    true
  end

end
