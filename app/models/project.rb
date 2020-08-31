class Project < ApplicationRecord
  belongs_to :user
  has_many :supporters

  validates :title, :description, :target_value, :end_date, presence: true
  validates :description, length: { maximum: 512 }
  validates :title, length: { maximum: 64 }
  has_one_attached :image_project
end
