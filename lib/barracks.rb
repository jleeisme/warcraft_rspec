class Barracks

  attr_reader :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def train_footman
    if can_train_footman? 
      @gold -= 135
      @food -= 2
      Footman.new
    end
    # @train_footman = Footman.new(60, 10)
  end
end
