class Sport < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true

  has_many :skills, dependent: :destroy
end
