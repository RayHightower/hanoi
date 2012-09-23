require 'helper'

describe "Towers of Hanoi" do
  # Acceptance tests
  describe "acceptance tests" do
    it "consumes the initial number of disks per Tower" do
      state = [(1..8).to_a, [], []]
      @hanoi = Hanoi.new(*state)
      assert_equal state, @hanoi.disks_per_tower
    end

    it "moves one disk at a time"
    it "moves the upper disk from one tower"
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
      assert @board.towers.all? { |t| t.instance_of? Hanoi::Tower },
        "All objects in #towers are not Towers"
    end

    it "accepts the number of disks per Twoer when created" do
      assert_equal @state, @board.disks_per_tower
    end
  end

  describe "Tower" do
    it "accepts a stack of disks" do
      Hanoi::Tower.new((1..8).to_a)
    end

    it "knows its disks in order" do
      state = (1..8).to_a
      tower = Hanoi::Tower.new(state)
      assert_equal state, tower.disks
    end
  end
end
