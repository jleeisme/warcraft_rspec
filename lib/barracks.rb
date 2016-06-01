class Barracks

  attr_reader :gold, :food

# Barracks start with (1000, 80)
  def initialize
    @gold = 1000
    @food = 80
  end

# must have greater or equal to 135 gold & 2 food
  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def train_footman
    # if you can train a footman, then gold is reduced, food is reduced
    # then you receive a new footman (instance). The order is imoortant.
    if can_train_footman? 
      @gold -= 135
      @food -= 2
      Footman.new
    end
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end


end
