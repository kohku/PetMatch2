class User < ActiveRecord::Base
	has_many :authorizations

	# Include default devise modules. Others available are:
 	# :confirmable, :lockable, :timeoutable and :omniauthable
 	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google]

 	def self.from_omniauth(auth)
  		where(provider: auth.provider, uid: auth.uid).first_or_create do | user |
	  		user.provider = auth.provider
	  		user.uid = auth.uid
	  		user.email = auth.info.email
	  		user.password = Devise.friendly_token[0,20]
	  	end
  	end

	# obsolete
	def self.create_from_hash!(hash)
		create(:name => hash['info']['name'])
	end
end
