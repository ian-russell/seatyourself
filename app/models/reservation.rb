class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :date, :time, presence: true
  validate :date_cannot_be_in_the_past
  validate :restaurant_cannot_be_full
  validates :party_size, numericality: {only_integer: true}, presence: true

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "Can't be in the past")
    end
  end

  def restaurant_cannot_be_full
    unless restaurant.available?(party_size, time)
      errors[:base] << "This restaurant is full at this time!"
    end
  end

end
