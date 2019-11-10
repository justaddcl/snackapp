module SessionsHelper
  # logs in the give user
  def log_in(user)
    session[:user_id] = user.id
  end

  # returns the currently logged-in user
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # returns if a user is logged in
  def logged_in?
    !current_user.nil?
  end
end