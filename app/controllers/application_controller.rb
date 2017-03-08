class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
    !!session[:name]
  end

  def current_user
  if logged_in?
    session[:name]
  else session[:name] = nil
  end 
  end
end
