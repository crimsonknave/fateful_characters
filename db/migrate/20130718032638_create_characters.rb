class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :campaign_id
      t.string :name
      t.text :description
      t.integer :refresh
      t.text :extras
      t.integer :max_physical_stress
      t.integer :current_physical_stress
      t.integer :max_mental_stress
      t.integer :current_physical_stress

      t.timestamps
    end
  end
end
