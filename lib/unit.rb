class Unit 

  attr_reader :health_points, :attack_power
  
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power    
  end

  def attack!(enemy)
    enemy.damage(attack_power) #the enemy takes damage from the value
    # of attack_power
  end
  
  def damage(attack_power)
    @health_points -= attack_power #the instance of @health_points
    # is reduced by the attack_power
  end

  def dead?
    if @health_points <= 0 
      true
    end
  end

# attack if enemy is not dead and unit is not dead
  def can_attack?(enemy)
    !enemy.dead? && !dead?
  end

end