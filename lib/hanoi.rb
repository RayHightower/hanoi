class Hanoi
  def initialize(*args)
    @board = Board.new(*args)
  end

  def disks_per_tower
    @board.disks_per_tower
  end

  class Board
    attr_reader :towers

    def initialize(disks_1, disks_2, disks_3)
      @towers = [disks_1, disks_2, disks_3].map do |disks_per_tower|
        Tower.new disks_per_tower
      end
    end

    def disks_per_tower
      @towers.map { |t| t.disks }
    end
  end

  class Tower
    attr_accessor :disks

    def initialize(disks)
      @disks = disks
    end
  end
end
