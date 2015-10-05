require 'rubygems'
require 'role_model'

class User < ActiveRecord::Base
	has_many :identities

	# Include default devise modules. Others available are:
 	# :confirmable, :lockable, :timeoutable and :omniauthable
 	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google]

    include RoleModel

	def self.from_omniauth!(auth)
		where(email: auth.info.email).first_or_create do | user |
			user.name = auth.info.name
			user.email = auth.info.email
			user.password = Devise.friendly_token[0,20]
		end
	end

	roles :admin, :membership, :author
end
