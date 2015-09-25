class SessionController < ApplicationController
  def create
    render text: request.env['omniauth.auth'].to_yaml
  	#begin
  	#	@user = User.from_omniauth(request.env['omniauth.auth'])
  	#	session[:user_id] = @user.id
  	#	flash[:success] = "Welcome, #{@user.name}!"
  	#rescue
  	#	flash[:warning] = "Create: There was an error while trying to authenticate you."
  	#end
  	#redirect_to root_path
  end

  def failure
  	begin
  		flash[:warning] = Rack::Utils.escape(env['omniauth.error'].error_reason)
  	rescue
  		flash[:warning] = "Failure: There was an error while trying to authenticate you."
  	end
  	redirect_to root_path
  end

  def destroy
  	if current_user
  		session.delete(:user_id)
  		flash[:success] = 'See you!'
  	end
  	redirect_to root_path
  end
end
