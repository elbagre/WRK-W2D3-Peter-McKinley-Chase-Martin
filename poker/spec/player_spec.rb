require 'rspec'
require 'player'
require 'hand'

describe Player do
  subject(:deck) { Deck.new }
  subject(:hand) { Hand.new(deck) }
  subject(:player) { Player.new('Billy Bob', hand) }

  describe '#initialize' do
    it 'initializes with a name' do
      expect(player.name).to eq('Billy Bob')
    end

    it 'initializes with a hand' do
      expect(player.hand).to be_a(Hand)
    end
  end

  # describe '#take_turn' do
  #
  # end
end
