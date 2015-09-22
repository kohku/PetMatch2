#spec/models/pet_types_spec.rb

require 'rails_helper'

describe PetType do
	it "has a valid factory" do
		Factory.create(:pet_type).should be_valid
	end

	it "is invalid without a name" do
		Factory.build(:pet_type, name: nil).should_not be_valid
	end
end
