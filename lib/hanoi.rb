class Hanoi
  class Board
    def initialize(num_disks)
    end

    def towers
      (1..3).map { Hanoi::Tower.new }
    end
  end

  class Tower
  end
end
