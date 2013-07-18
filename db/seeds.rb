# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

camp = Campaign.new name: :test_campaign
camp.save!

skills = [
  Skill.new({ campaign_id: camp.id, name: :athletics }),
  Skill.new({ campaign_id: camp.id, name: :notice }),
  Skill.new({ campaign_id: camp.id, name: :fight }),
  Skill.new({ campaign_id: camp.id, name: :deceive }),
  Skill.new({ campaign_id: camp.id, name: :investiage }),
  Skill.new({ campaign_id: camp.id, name: :physique }),
  Skill.new({ campaign_id: camp.id, name: :resources }),
  Skill.new({ campaign_id: camp.id, name: :lore })
]
skills.map(&:save!)

char1 = Character.new name: :fred, description: "This is fred", refresh: 3, extras: "Nothing in extras yet", campaign_id: camp.id
char1.save!
skills.each_with_index do |skill, i|
  rs = RankedSkill.new character_id: char1.id, skill_id: skill.id, rank: i
  rs.save!
end

