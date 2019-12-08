module AuthHelper

  # confirms if a user is logged in
  def logged_in_user
    unless logged_in?
      store_location
      # only display log in message if not redirected from the homepage
      if session[:forwarding_url] != '/'
        flash[:danger] = "Uh oh. Looks like you'll need to log in before you can do that 😬"
      end
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

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end