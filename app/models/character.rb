class Character < ActiveRecord::Base
  has_many :aspects
  has_many :stunts
  has_many :ranked_skills
  belongs_to :campaign

  def sorted_skills
    sorted = {}
    ranked_skills.each do |skill|
      sorted[skill.rank] ||= []
      sorted[skill.rank] << skill.name
    end

    sorted
  end
end
