class Supporter < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :user, :project, presence: true
  validates :donated_amount, presence: true
  validates :donated_amount, numericality: { greater_than_or_equal_to: 1 }
end
