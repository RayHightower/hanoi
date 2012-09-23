class Hanoi
  def initialize(*args)
    @board = Board.new(*args)
  end

  class Board
    def initialize(disks_1, disks_2, disks_3)
    end

    def towers
      (1..3).map { Hanoi::Tower.new }
    end
  end

  class Tower
  end
end
