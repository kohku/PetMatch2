class Identity < ActiveRecord::Base
  	belongs_to :user

	validates_presence_of :user_id, :uid, :provider
	validates_uniqueness_of :uid, :scope => :provider

	def self.find_from_hash(auth)
		find_by_provider_and_uid(auth.provider, auth.uid)
	end

	def self.from_omniauth(auth, user = nil)
		user ||= User.from_omniauth!(auth)
		Identity.create(:user => user, :provider => auth.provider, :uid => auth.uid)
	end
end
