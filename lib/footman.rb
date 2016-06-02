# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  def initialize
    super(60, 3)#inherits from Unit and needs to take two arguments
    # that the super has (HP, AP)
  end

  def attack_barracks(building)
    building.damage((attack_power.to_f / 2).ceil)
  end
  
end
