class UsersController < ApplicationController
  skip_before_action :logged_in_user, only: [:new, :create]
  # # before_action :logged_in_user, only: [:edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:index, :destroy]

  def index
    @users = User.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    # render plain: params[:user].inspect
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = 'Account created!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = 'Account edited'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = 'User deleted'
    redirect_to users_url
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :favorite_snack, :dietary_restrictions,
      :password, :password_confirmation)
  end
end
