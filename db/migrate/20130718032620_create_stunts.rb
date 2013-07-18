class CreateStunts < ActiveRecord::Migration
  def change
    create_table :stunts do |t|
      t.integer :character_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
