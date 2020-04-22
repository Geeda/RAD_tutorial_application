class UsersController < ApplicationController
# require 'pr'

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # binding.pry
  end

  def create
    @user = User.new(params[user_params])
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Tute 6!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
