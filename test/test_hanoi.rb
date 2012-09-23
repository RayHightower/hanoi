require 'helper'

describe "Towers of Hanoi" do
  # Acceptance tests
  describe "acceptance tests" do
    it "consumes the initial number of disks per Tower" do
      @hanoi = Hanoi.new(8, 0, 0)
      assert_equal [(1..8).to_a, [], []], @hanoi.state
    end

    it "moves one disk at a time"
    it "moves the upper disk from one tower"
    it "moves the disk atop a larger disk"
    it "cannot move the disk atop a smaller disk"
  end


  describe "Board" do
    before do
      @state = (1..8).to_a, [], []
      @board = Hanoi::Board.new *@state
    end

    it "has three towers" do
      assert_equal 3, @board.towers.length
      assert @board.towers.all? { |t| t.instance_of? Hanoi::Tower },
        "All objects in #towers are not Towers"
    end

    it "accepts the state of the 3 Towers when created" do
      assert_equal @board.state, @state
    end
  end

  describe "Tower" do
    it "accepts a stack of disks" do
      Tower.new((1..8).to_a)
    end

    it "knows its disks in order" do
      state = (1..8).to_a
      tower = Tower.new(state)
      assert_equal state, tower.disks
    end
  end
end
