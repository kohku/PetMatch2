class PetBreed < ActiveRecord::Base
	belongs_to :pet_type

	self.per_page = 5
end
