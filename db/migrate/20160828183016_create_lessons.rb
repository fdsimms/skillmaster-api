class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name, null: false, index: true
      t.integer :skill_id, null: false, index: true
      t.text :short_description

      t.timestamps null: false
    end
  end
end
