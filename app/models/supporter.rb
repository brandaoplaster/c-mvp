class Supporter < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :user, :project, presence: true
  validates :value, presence: true
end
