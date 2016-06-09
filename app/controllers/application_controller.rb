class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user



  before_action :require_login

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end

  def require_login
    if current_user.nil?
      flash[:error] = "You must be logged in to view this section"
      redirect_to root_path
    end
  end
end
