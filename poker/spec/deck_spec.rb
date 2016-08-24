require 'rspec'
require 'deck'

describe 'Deck' do
  subject(:deck) { Deck.new }
  let!(:original_cards) { deck.cards.dup }

  describe '#populate' do
    it 'creates 52 cards' do
      expect(deck.cards.length).to eq(52)
    end
  end

  describe '#shuffle' do
    it 'shuffles the deck' do
      deck.shuffle
      expect(deck.cards).not_to eq(original_cards)
    end
  end

  describe ''
end
