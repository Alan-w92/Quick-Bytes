class Favorite < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :image, presence: true
  validates :serving, presence: true
  validates :calorie, presence: true
  validates :element, presence: true
  validates :url, presence: true
end
