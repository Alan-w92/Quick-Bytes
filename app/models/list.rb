class List < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :ingredients

  validates :recipe_name, presence: true
end
