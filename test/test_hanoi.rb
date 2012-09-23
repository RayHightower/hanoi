require 'helper'

describe "Towers of Hanoi" do
  # Acceptance tests
  describe "acceptance tests" do
    before do
      @state = [(1..8).to_a, [], []]
      @hanoi = Hanoi.new(*@state)
    end

    it "consumes the initial number of disks per Tower" do
      assert_equal @state, @hanoi.disks_per_tower
    end

    it "moves one disk at a time, using the upper disk" do
      @hanoi.move!(0, 1)
      assert_equal [(1..7).to_a, [8], []], @hanoi.disks_per_tower
    end

    it "moves the disk atop a larger disk"
    it "cannot move the disk atop a smaller disk"
  end


  describe "Board" do
    before do
      @state = [(1..8).to_a, [], []]
      @board = Hanoi::Board.new *@state
    end

    it "has three towers" do
      assert_equal 3, @board.towers.length
    end

    it "accepts the number of disks per Twoer when created" do
      assert_equal @state, @board.disks_per_tower
    end
  end
end
