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

  # enemy is alive, unit is dead, can_attack is false
  describe "can_attack?" do
    it "if unit is dead, return false on can_attack?" do
      enemy = Unit.new(200, 300)
      expect(@unit.can_attack?(enemy)).to be_falsey
    end

# instance of dead enemy, instance of alive unit, attack dead enemy is false
    it "if enemy is dead, return false on can_attack?" do
      enemy = Unit.new(0, 0)
      unit = Unit.new(60, 20)
      expect(unit.can_attack?(enemy)).to be_falsey
    end
  end

end

# if unit is dead it cannot attack
# if enemy is dead it cannot be attacked