class PetType < ActiveRecord::Base
	has_many :pet_breeds, dependent: :destroy
	validates :name, presence: true,
			length: { minimum: 2 }
end
