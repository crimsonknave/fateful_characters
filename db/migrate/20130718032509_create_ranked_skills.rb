class CreateRankedSkills < ActiveRecord::Migration
  def change
    create_table :ranked_skills do |t|
      t.integer :character_id
      t.integer :skill_id
      t.integer :rank

      t.timestamps
    end
  end
end
