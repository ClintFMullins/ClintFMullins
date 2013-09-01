require 'faker'
require 'factory_girl'

possible_tags = ['java','python','ruby','AI','Dev Bootcamp']

FactoryGirl.define do 
	factory :experience do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
		tags        { possible_tags.sample(2).join(" ") }
  end

	factory :skill do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
		tags        { possible_tags.sample(2).join(" ") }
  end

  factory :accomplishment do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
		tags        { possible_tags.sample(2).join(" ") }
  end

  factory :employment do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
		tags        { possible_tags.sample(2).join(" ") }
  end

  factory :hobby do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
		tags        { possible_tags.sample(2).join(" ") }
  end
end