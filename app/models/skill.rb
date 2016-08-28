class Skill < ActiveRecord::Base
  validates :name, :course_id, null: false

  belongs_to :sport
  has_many :lessons
end
