#spec/factories/define do |

require 'faker'

FactoryGirl.define do
	factory :pet_breed do |f|
		f.name { Faker::Name.name }
		f.published true
		association :pet_type, factory: :pet_type
	end
end