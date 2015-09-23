#spec/models/pet_types_spec.rb

require 'rails_helper'

describe Pet do
	it "has a valid factory" do
		expect(FactoryGirl.create(:pet)).to be_valid
	end

	it "is invalid without a valid pet_type" do
		expect(FactoryGirl.create(:pet).pet_type).to be_valid
	end

	it "is invalid without a name" do
		expect(FactoryGirl.build(:pet, name: nil)).to_not be_valid
	end

	it "is invalid without a description" do
		expect(FactoryGirl.build(:pet, description: nil)).to_not be_valid
	end

	it "is invalid without a birth sdate" do
		expect(FactoryGirl.build(:pet, birth_date: nil)).to_not be_valid
	end

	it "is invalid without a valid name length" do
		expect(Pet.new(:name => "a")).to_not be_valid
	end
end