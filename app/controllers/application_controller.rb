class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include AuthHelper
  before_action :logged_in_user
end
