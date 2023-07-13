class User < ApplicationRecord
  has_many :reservations, foreign_key: 'user_id'
  has_many :cars, foreign_key: 'user_id'

  validates :user_name, :email, :password, presence: true
end
