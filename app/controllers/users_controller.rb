class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_session_path, alert: "Signed up! Please Log in:"
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
    unless current_user == @user
      flash[:notice] = "Wrong ID"
      redirect_to restaurants_url
    end
  end


  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to user_url(@user)
    else
      render 'edit'
    end
  end


  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end

end
