require 'delegate'

class Hanoi < SimpleDelegator
  def initialize(*args)
    @board = Board.new(*args)
    __setobj__(@board)
  end

  def move!(from_tower, to_tower)
    if moving_larger_over_smaller?(:from => from_tower, :to => to_tower)
      fail ArgumentError, "Cannot put larger disk atop smaller"
    end

    super
  end

  private

  def moving_larger_over_smaller?(args = {})
    from_tower, to_tower = args.values_at(:from, :to)

    moving_disk = towers[from_tower].last
    target_tower = towers[to_tower]

    target_tower.last && moving_disk > target_tower.last.to_i
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

      towers[to_tower] << towers[from_tower].pop
    end

    private

  end
end
