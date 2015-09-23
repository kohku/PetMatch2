#spec/models/pet_types_spec.rb

require 'rails_helper'

describe PetBreed do
	it "has a valid factory" do
		expect(FactoryGirl.create(:pet_breed)).to be_valid
	end

	it "is invalid without a valid pet_type" do
		expect(FactoryGirl.create(:pet_breed).pet_type).to be_valid
	end

	it "is invalid without a name" do
		expect(FactoryGirl.build(:pet_breed, name: nil)).to_not be_valid
	end

	it "is invalid without a valid name length" do
		expect(PetBreed.new(:name => "a")).to_not be_valid
	end
end
