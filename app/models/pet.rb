class Pet < ActiveRecord::Base
	has_one :pet_type
	has_one :pet_breed
end
