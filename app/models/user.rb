class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :token_authenticatable
  has_many :reservations, foreign_key: 'user_id', dependent: :destroy
  has_many :cars, foreign_key: 'user_id', dependent: :destroy

  validates :username, :email, :password, presence: true
end
