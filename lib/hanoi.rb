class Hanoi
  def initialize(*args)
    @board = Board.new(*args)
  end

  def state
  end

  class Board
    def initialize(disks_1, disks_2, disks_3)
      @towers = [disks_1, disks_2, disks_3].map do |disks_per_tower|
        Tower.new disks_per_tower
      end
    end

    def towers
      @towers ||= (1..3).map { Hanoi::Tower.new }
    end

    def state
    end
  end

  class Tower
    def initialize(disks)
    end
  end
end
