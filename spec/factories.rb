require 'faker'
require 'factory_girl'

FactoryGirl.define do 
	factory :experience do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
  end

	factory :skill do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
  end

  factory :accomplishment do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
  end

  factory :employment do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
  end

  factory :hobby do
    name 			  { Faker::Company.name } 
		description { Faker::Lorem.sentence }
		start_date  { 2.days.ago }
		end_date    { Date.today }
		lesson      { Faker::Lorem.sentence }
  end
end