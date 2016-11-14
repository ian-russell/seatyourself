class ReservationsController < ApplicationController

  before_action :load_restaurant, except: [:index, :destroy]

  def index
    @reservations = Reservation.all
    @restaurants = Restaurant.all
    render 'index'
  end

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
      redirect_to reservations_path
    else
      flash.now[:alert] = "You will need to select a party size to book your reservation"
      render 'restaurants/show'
    end

  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.delete
      redirect_to reservations_path(current_user)
  end

  private
  def reservation_params
    params.require(:reservation).permit(:date, :time, :party_size, :restaurant_id)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
