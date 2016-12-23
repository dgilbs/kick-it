class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    u = User.new(user_params)
    u.save
    redirect_to user_path(u)
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :position, :bio, :gender)
  end
end
