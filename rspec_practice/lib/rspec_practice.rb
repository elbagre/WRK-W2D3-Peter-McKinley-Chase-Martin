class Array

  def my_uniq
    new_array = []

    self.each { |el| new_array << el unless new_array.include?(el) }

    new_array
  end

  def two_sum
    indices = []

    for i in 0...(self.length - 1)
      for j in (i + 1)...self.length
        indices << [i, j] if self[i] + self[j] == 0
      end
    end
    indices
  end

  def my_transpose
    self.drop(1).each do |row|
      raise Exception unless row.length == self[0].length
    end

    transposed = Array.new(self.length) { [] }

    self.each.with_index do |row, i|
      row.each.with_index do |el, j|
        transposed[j] << el
      end
    end

    transposed
  end

  def stock_picker
    highest_profit = nil
    pair = []

    for i in 0...(self.length - 1)
      for j in 0...(self.length)
        next if i > j
        profit = self[j] - self[i]

        if highest_profit.nil? || profit > highest_profit
          highest_profit = profit
          pair = [i, j]
        end
      end
    end

    pair
  end
end
