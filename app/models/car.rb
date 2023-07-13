class Car < ApplicationRecord
  has_many :reservations, foreign_key: 'car_id'
  belongs_to :user
  validates :name, :image, :description, :price, presence: true
end
