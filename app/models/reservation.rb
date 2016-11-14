class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :date, :time, presence: true
  validates :party_size, numericality: {only_integer: true}, presence: true

end
