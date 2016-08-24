class TowersOfHanoi

  attr_reader :towers

  def initialize(towers = [[1, 2, 3], [], []])
    @towers = towers
  end

  def prompt
    pos = [3, 3]

    valid_pos = false
    until pos.length == 2 && valid_pos
      print "Choose a starting and ending tower: "
      pos = gets.chomp.split(",").map(&:to_i)
      valid_pos = pos.all? { |el| el.is_a?(Integer) && el.between?(0,2) }
    end
    pos
  end

  def move(from, to)
    if towers[to].empty? || towers[to].first > towers[from].first
      towers[to].unshift(towers[from].shift)
    end
  end

  def play
    until won?
      system('clear')
      print @towers
      puts
      move(*prompt)
    end
    print 'You won!'
  end

  def won?
    @towers[1].length == 3 || @towers[2].length == 3
  end
end
