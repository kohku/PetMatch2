class PetBreed < ActiveRecord::Base
	belongs_to :pet_type
	validates :name, presence: true,
			length: { minimum: 2 }

	self.per_page = 5
end
