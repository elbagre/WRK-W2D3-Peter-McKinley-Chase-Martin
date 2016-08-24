require 'rspec'
require 'rspec_practice'

describe Array do

  describe '#my_uniq' do
    let(:array) { [1, 1, 2, 2, 3, 3] }
    let(:unique_array) { [1, 2, 3] }

    it 'can be called on an array' do
      expect(array).to respond_to(:my_uniq)
    end
    it 'doesn\'t return with duplicates' do
      expect(array.my_uniq).to eq(unique_array)
    end
  end

  describe '#two_sum' do
    let(:array) { [1, -1, 3, 4, -4, -3, 7] }
    let(:result) { [[0, 1], [2, 5], [3, 4]]}
    let(:original) { array.dup }

    it 'can be called on an array' do
      expect { array.two_sum }.not_to raise_error
    end

    it 'doesn\'t modify the original array' do
      array.two_sum
      expect(array).to eq(original)
    end

    it 'returns the correct array of indices' do
      expect(array.two_sum).to eq(result)
    end
  end

  describe '#my_transpose' do
    let(:array) do
      [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ]
    end

    let(:transposed) do
      [
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9]
      ]
    end

    let(:multi_length) { [[1, 2], [1]] }

    it 'can be called on an array' do
      expect { array.my_transpose }.not_to raise_error
    end

    it 'raises an error if array elements are different lengths' do
      expect { multi_length.my_transpose }.to raise_error
    end

    it 'returns a transposed array' do
      expect(array.my_transpose).to eq(transposed)
    end
  end

  describe '#stock_picker' do
    let(:values) { [4, 1, 2, 3, 5] }
    let(:result) { [1, 4] }
    let(:first) { values.stock_picker.first }
    let(:last) { values.stock_picker.last }

    it 'returns an array' do
      expect(values.stock_picker).to be_an(Array)
    end

    it 'returns an array of two elements' do
      expect(values.stock_picker.length).to eq(2)
    end

    it 'buys on an earlier day than it sells' do
      expect(first).to be < last
    end

    it 'chooses the most profitable pair of days' do
      expect(values.stock_picker).to eq(result)
    end
  end
end










#
