class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname, null: false, index: true
      t.string :password_digest, null: false, index: true
      t.string :fname, null: false
      t.string :lname, null: false
      t.string :email, null: false, unique: true, index: true
      t.integer :points, null: false, default: 0
      t.string :session_token, null: false, unique: true, index: true

      t.timestamps null: false
    end
  end
end
