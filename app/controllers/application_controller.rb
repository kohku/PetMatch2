class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 #private

  #def current_user
  #	@current_user ||= User.find_by(id: session[:user_id])
  #end

  #def signed_in?
  #	!!current_user
  #end

  #helper_method :current_user, :signed_in?

  #def current_user=(user)
  #	@current_user = user
  #	session[:user_id] = user.nil? ? nil : user.id
  #end

  rescue_from CanCan::AccessDenied do | exception |
    redirect_to root_url, :alert => exception.message
  end
end
