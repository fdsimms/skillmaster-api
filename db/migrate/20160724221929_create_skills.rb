class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name, null: false, index: true
      t.integer :sport_id, null: false, index: true
      t.text :instructions
      
      t.timestamps null: false
    end
  end
end
