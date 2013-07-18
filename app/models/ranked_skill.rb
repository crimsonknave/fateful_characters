class RankedSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :character

  def name
    skill.name
  end
end
