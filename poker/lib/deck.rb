require_relative 'card'

class Deck
  SUITS = [ :hearts, :diamonds, :spades, :clubs ]
  VALUES = [
    :two,
    :three,
    :four,
    :five,
    :six,
    :seven,
    :eight,
    :nine,
    :ten,
    :jack,
    :queen,
    :king,
    :ace
  ]


  def self.populate
    cards = []

    SUITS.each do |suit|
      VALUES.each do |value|
        cards << Card.new(suit, value)
      end
    end

    cards.shuffle
  end

  attr_reader :cards

  def initialize
    @cards = Deck.populate
  end

  def shuffle
    @cards = cards.shuffle
  end

  def count
    @cards.length
  end
end
