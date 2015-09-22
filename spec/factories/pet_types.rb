#spec/factories/define do |
require 'faker'

FactoryGirl.define do
	factory :pet_type do |f|
		f.name = { Faker::Name.name }
		f.published true
	end
end