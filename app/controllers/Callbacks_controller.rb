class CallbacksController < Devise::OmniauthCallbacksController
	def google
#		begin
			auth = request.env["omniauth.auth"]

			unless @identity = Identity.find_from_hash(auth)
		        # Create a new user or add an auth to existing user, depending on
		        # whether there is already a user signed in.
		        @identity = Identity.from_omniauth(auth)
		     end

			sign_in_and_redirect @identity.user
#			if signed_in?
#				if @identity == current_user
				  # User is signed in so they are trying to link an identity with their
				  # account. But we found the identity and the user associated with it
				  # is the current user. So the identity is already associated with
				  # this user. So let's display an error message.
				  #redirect_to root_path
#				else
				  # The identity is not associated with the current_user so lets
				  # associtate the identity
#				  @identity.user = current_user
#				  @identity.save()
#				  flash[:success] = "Successfully linked that account!, #{current_user.name}!"
				  #redirect_to root_path
#				end
#			else
#				if @identity.user.present?
				  # The identity we found had a user associated with it so let's
				  # just log them in here
#				  self.current_user = @identity.user
#				  flash[:success] = "Welcome back, #{current_user.name}!"
				  #redirect_to root_path
#				else
				  # No user associated with the identity so we need to create a new one
#				  flash[:success] = "Welcome, #{current_user.name}!. Please finish registering"
				  #redirect_to new_user_url
#				end
#			end	
#	  	rescue Exception => e
#	  		flash[:warning] = e.message
#	  	end

		#render text: request.env['omniauth.auth'].to_yaml
	end

	def redirect_to_failure
	  	begin
	  		flash[:warning] = Rack::Utils.escape(env['omniauth.error'].error_reason)
	  	rescue
	  		flash[:warning] = "Failure: There was an error while trying to authenticate you."
	  	end
	end
end