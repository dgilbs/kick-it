class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    u = User.new(user_params)
    u.save
  end

  def show
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :position, :bio, :gender)
  end
end
