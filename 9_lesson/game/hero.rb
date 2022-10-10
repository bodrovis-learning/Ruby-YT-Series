require_relative 'character'

class Hero < Character
  attr_reader :health_potions

  MIN_DMG = 10
  MAX_DMG = 15
  POTION_STRENGTH = 10
  
  def initialize
    @hit_points = 20
    @health_potions = 2
  end

  def drink_potion
    if @health_potions > 0
      @hit_points += POTION_STRENGTH
      @health_potions -= 1
    end
  end
end