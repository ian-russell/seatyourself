class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations

  def available?(party_size, time)
    party_size <= available_capacity(time)
  end

  private

  def available_capacity(time)
    capacity - reservations_at(time).sum(:party_size)
  end

  def reservations_at(time)
    time = time.to_time
    reservations.where('time >= ? AND time < ?', time.beginning_of_hour, time.end_of_hour)
  end

end
