class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :restaurants, through: :reservations

  validates :email, :password, :firstname, :lastname, :password_confirmation, presence: true

end
