class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new

  end

  def show

  end

  def create
    #render plain: params[:user].inspect
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
