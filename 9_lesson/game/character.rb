class Character
  attr_reader :hit_points

  def attack(target)
    dmg = rand min_dmg..max_dmg
    target.receive_dmg(dmg)

    after_attack
    
    dmg
  end

  def min_dmg
    self.class::MIN_DMG
  end

  def max_dmg
    self.class::MAX_DMG
  end

  protected

  def receive_dmg(dmg)
    @hit_points -= dmg
  end

  private

  def after_attack
  end
end