class Lesson < ActiveRecord::Base
  validates :name, :skill_id, null: false

  belongs_to :skill
end
