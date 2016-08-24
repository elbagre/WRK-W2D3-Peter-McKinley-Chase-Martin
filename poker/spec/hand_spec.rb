require 'rspec'
require 'hand'
require 'deck'

describe Hand do
  subject(:deck) { Deck.new }
  subject(:hand) { Hand.new(deck) }

  describe '#initialize' do
    it 'should start a hand with 5 cards' do
      expect(hand.cards.count).to eq(5)
    end
  end

  describe '#draw' do
    it 'should remove a card from the deck and add to the hand' do
      hand.draw
      expect(deck.count).to eq(46)
      expect(hand.cards.length).to eq(6)
    end
  end
end
