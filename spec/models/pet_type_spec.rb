#spec/models/pet_types_spec.rb

require 'rails_helper'

describe PetType do
	it "has a valid factory" do
		expect(FactoryGirl.create(:pet_type)).to be_valid
	end

	it "is invalid without a name" do
		expect(FactoryGirl.build(:pet_type, name: nil)).to_not be_valid
	end

	it "is invalid without a valid name length" do
		expect(PetType.new(:name => "a")).to_not be_valid
	end
end
