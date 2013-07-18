class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :campaign_id
      t.string :name

      t.timestamps
    end
  end
end
