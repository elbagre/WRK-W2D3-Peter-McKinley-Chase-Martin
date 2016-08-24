require 'rspec'
require 'towers_of_hanoi'

describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }
  let(:towers) { [[1, 2, 3], [], []] }

  describe '#towers' do

    it 'returns an array of towers' do
      expect(game.towers).to eq(towers)
    end
  end

  describe '#move' do

    it 'should take the top disk' do
      game.move(0, 1)
      expect(game.towers).to eq([[2, 3], [1], []])
    end

    it 'shouldn\'t place a disk on top of a smaller disk' do
      game.move(0, 1)
      game.move(0, 1)
      expect(game.towers).to eq([[2, 3], [1], []])
    end
  end

  subject(:won_game) { TowersOfHanoi.new([[], [1, 2, 3], []]) }

  describe '#won?' do
    it 'returns true if won' do
      expect(won_game).to be_won
    end
  end
end
