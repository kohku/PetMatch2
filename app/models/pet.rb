class Pet < ActiveRecord::Base
	has_one :pet_type
	has_one :pet_breed
	validates :name, presence: true, length: { minimum: 2 }
	validates_associated :pet_type
	validates :description, presence: true, length: { minimum: 2 }
	#TODO: Validate date ranges
	validates :birth_date, presence: true

end
