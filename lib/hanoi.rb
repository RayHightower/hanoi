class Hanoi
  def initialize(*args)
    @board = Board.new(*args)
  end

  def disks_per_tower
    @board.disks_per_tower
  end

  def move!(from_tower, to_tower)
    @board.move!(from_tower, to_tower)
  end

  class Board
    attr_reader :towers

    def initialize(disks_1, disks_2, disks_3)
      @towers = [disks_1, disks_2, disks_3]
    end

    def disks_per_tower
      self.towers
    end

    def move!(from_tower, to_tower)
      @towers[to_tower] << @towers[from_tower].pop
    end
  end
end
