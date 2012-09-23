require 'helper'

describe "Towers of Hanoi" do
  # Acceptance tests
  describe "the game" do
    it "consumes the initial number of disks per Tower" do
      @hanoi = Hanoi.new(8, 0, 0)
      assert_equal [[1,2,3,4,5,6,7,8], [], []], @hanoi.state
    end

    it "moves one disk at a time"
    it "moves the upper disk from one tower"
    it "moves the disk atop a larger disk"
    it "cannot move the disk atop a smaller disk"
  end


  describe "Board" do
    before do
      @board = Hanoi::Board.new
    end

    it "has three towers" do
      assert_equal 3, @board.towers.length
      assert @board.towers.all? { |t| t.instance_of? Hanoi::Tower },
        "All objects in #towers are not Towers"
    end
  end

  describe "when moving a disk" do
  end
end
