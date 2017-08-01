class Comment < ApplicationRecord
  belongs_to :list

  validates :description, presence: true
end
