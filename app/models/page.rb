class Page < ActiveRecord::Base
	extend FriendlyId
	friendly_id :slug, use: :slugged
	validates_format_of :slug, :with => /\A[a-z0-9._-]+\z/i
	validates_presence_of :title, :slug, :content

	self.per_page = 5
end
