class Pet < ActiveRecord::Base
	has_one :pet_type, foreign_key: "id"
	has_one :pet_breed, foreign_key: "id"
	validates :name, presence: true, length: { minimum: 2 }
	validates_associated :pet_type, presence: true
	validates :description, presence: true, length: { minimum: 2 }
	#TODO: Validate date ranges
	validates :birth_date, presence: true
	mount_uploader :image, ImageUploader

	def self.match(pet_type_id = nil, pet_breed_id = nil, gender = nil)
		if (pet_type_id && pet_breed_id && gender)
		 	return where(pet_type_id: pet_type_id, pet_breed_id: pet_breed_id, gender: gender)
		elsif (pet_type_id && pet_breed_id && !gender)
			return where(pet_type_id: pet_type_id, pet_breed_id: pet_breed_id)
		elsif (pet_type_id && !pet_breed_id && gender)
			return where(pet_type_id: pet_type_id, gender: gender)
		elsif (pet_type_id && !pet_breed_id && !gender)
			return where(pet_type_id: pet_type_id)
		end

		none
	end
end
