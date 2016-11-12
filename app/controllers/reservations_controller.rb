class ReservationsController < ApplicationController

  before_action :load_restaurant

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)

    @reservation.user = current_user

    if @reservation.save
      redirect_to restaurants_url
    else
      render 'restaurants/show'
    end

  end

  def destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:date, :time, :party_size, :restaurant_id)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
