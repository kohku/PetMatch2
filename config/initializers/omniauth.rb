Rails.application.config.middleware.use OmniAuth::Builder do
	provider :google_oauth2, "291730784482-tl1f47jcnt0kg259idjfdf1i7kf4u386.apps.googleusercontent.com", "sp9yLwIQl5UmqzjNHqni8ZzD",
		{
			scope: 'profile',
			:client_options => {:ssl => {:verify => false }},
			:name => "google"
		}
end

OmniAuth.config.on_failure = Proc.new do | env |
	SessionController.action(:auth_failure).call(env)
end