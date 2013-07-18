class Campaign < ActiveRecord::Base
  has_many :characters
  has_many :skills
end
