class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_reservation_count
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @reservations = Reservation.all
    @reservations.where('user_id' => current_user.id).count
  end

  def restaurant_count
    Restaurant.all.count
  end

  helper_method :current_user, :user_reservation_count, :restaurant_count

end
