require 'helper'

describe "Towers of Hanoi" do
  describe "Board" do
    before do
      @num_disks = 8
      @board = Hanoi::Board.new(@num_disks)
    end

    it "has three towers" do
      assert_equal 3, @board.towers.length
      assert @board.towers.all? { |t| t.instance_of? Hanoi::Tower },
        "All objects in #towers are not Towers"
    end

    describe "in initial state" do
      it "has a stack of disks on one tower"
      it "has two other empty towers"
    end
  end

  describe "when moving a disk" do
    it "moves one disk at a time"
    it "moves the upper disk from one tower"
    it "moves the disk atop a larger disk"
    it "cannot move the disk atop a smaller disk"
  end
end
