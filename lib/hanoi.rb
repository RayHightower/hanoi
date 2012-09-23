class Hanoi
  attr_accessor :state

  def initialize(*args)
    @state = *args
  end

  class Board
    def towers
      (1..3).map { Hanoi::Tower.new }
    end
  end

  class Tower
  end
end
