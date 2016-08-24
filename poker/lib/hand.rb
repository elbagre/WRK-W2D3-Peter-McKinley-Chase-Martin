class Hand


  attr_reader :cards, :deck

  def initialize(deck)
    @deck = deck
    @cards = []
    draw_hand(deck)
  end

  def draw_hand(deck)
    5.times { draw }
  end

  def draw
    @cards << @deck.cards.shift
  end

end
