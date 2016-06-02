require_relative 'spec_helper'

describe Unit do
  
  before :each do
    @unit = Unit.new(0, 0)
  end

  describe "#dead?" do
    it "Unit should be #dead? if HP reaches 0 or less." do
      unit = Unit.new(0, 0)
      expect(@unit.health_points).to eq(0)
      # expect(@unit).to receive(:damage).with(100)
      expect(@unit.dead?).to be_truthy
    end
  end

  # describe "#can_attack?" do
  #   it "return true if unit is alive and enemy is alive." do
  #     enemy = Unit.new(0, 0)
  #     expect(enemy.!dead?).to be_truthy
  #   end
  # end
  describe "can_attack?" do
    it "if unit is dead, return false on can_attack?" do
      expect(@unit.dead?).to be_truthy
    end

    it "if enemy is dead, return false on can_attack?" do
      expect(@enemy.dead?).to be_truthy
    end
  end

end

# if unit is dead it cannot attack
# if unit is !dead and enemy is dead !attack