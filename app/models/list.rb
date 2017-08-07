class List < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :recipe_name, presence: true
  validates :ingredient, presence: true
end
