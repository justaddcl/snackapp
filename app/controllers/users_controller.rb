class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]

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
    #render plain: params[:user].inspect
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Account created!"
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
      flash[:success] = "Account edited"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email,
      :password, :password_confirmation)
  end

  # confirms if a user is logged in
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Uh oh. Looks like you'll need to log in before you can do that 😬"
      redirect_to login_url
    end
  end

  # confirms the correct user
  def correct_user
    @user = User.find(params[:id])
    unless current_user?(@user)
      flash[:danger] = "Yikes. Sorry, but it doesn't look you have permission to do that 😬"
      redirect_back(fallback_location: root_url)
    end
  end

end
