class Comment < ApplicationRecord
  belongs_to :list
  belongs_to :user, optional: true

  validates :description, presence: true
end
