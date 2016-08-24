require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new(:queen, :hearts) }

  it 'initializes with house' do
    expect(card.suit).to eq(:hearts)
  end

  it 'initializes with value' do
    expect(card.value).to eq(:queen)
  end
end
