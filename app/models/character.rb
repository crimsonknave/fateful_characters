class Character < ActiveRecord::Base
  has_many :aspects
  has_many :stunts
  has_many :ranked_skills
  belongs_to :campaign
end
