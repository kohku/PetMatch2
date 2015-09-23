class Pet < ActiveRecord::Base
	has_one :pet_type, foreign_key: "id"
	has_one :pet_breed, foreign_key: "id"
	validates :name, presence: true, length: { minimum: 2 }
	validates_associated :pet_type, presence: true
	validates :description, presence: true, length: { minimum: 2 }
	#TODO: Validate date ranges
	validates :birth_date, presence: true
	mount_uploader :image, ImageUploader
end
