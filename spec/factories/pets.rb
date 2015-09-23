#spec/factories/define do |

require 'faker'

FactoryGirl.define do
	factory :pet do |f|
		f.name { Faker::Name.name }
		f.description { Faker::Lorem.sentences(paragraph_count = 5) }
		f.birth_date { Faker::Time.birthday }
		f.published true
		association :pet_type, factory: :pet_type
		association :pet_breed, factory: :pet_breed
	end
end