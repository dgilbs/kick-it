class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    byebug
    x=1
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :position, :bio, :gender)
  end
end
