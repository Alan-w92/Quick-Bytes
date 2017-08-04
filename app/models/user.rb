class User < ApplicationRecord
  has_many :lists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates :first_name, presence: true
   validates :last_name, presence: true

   def self.search(search)
     where("quantity LIKE ?", "%#{search}%" )
   end
end
