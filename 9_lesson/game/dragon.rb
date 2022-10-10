require_relative 'character'

class Dragon < Character
  MIN_DMG = 0
  MAX_DMG = 9

  def initialize
    @hit_points = 30
  end
end