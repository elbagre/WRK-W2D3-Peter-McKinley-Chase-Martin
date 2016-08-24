class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @suit = suit
    @value = value
  end

  def ==(other_card)
    value == other_card.value && suit == other_card.suit
  end
end
