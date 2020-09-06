class Project < ApplicationRecord
  belongs_to :user
  has_many :supporters

  validates :title, :description, :target_value, :image_project, presence: true
  validates :description, length: { maximum: 512 }
  validates :title, length: { maximum: 64 }
  validates :target_value, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 500 }
  validates :end_date, presence: true
  validates_with CheckDateValidator
  has_one_attached :image_project
end
