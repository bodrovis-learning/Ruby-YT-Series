class Character
  attr_reader :hit_points

  def attack(target)
    dmg = rand self.class::MIN_DMG..self.class::MAX_DMG
    target.receive_dmg(dmg)
    dmg
  end

  # private
  protected

  def receive_dmg(dmg)
    @hit_points -= dmg
  end
end