class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :city, :start_date, :end_date, presence: true
end
