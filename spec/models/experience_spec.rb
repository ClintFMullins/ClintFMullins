require 'spec_helper'
require 'factories'

describe Experience do 

	it { should validate_presence_of :name }
	it { should validate_presence_of :description }
	it { should validate_presence_of :start_date }
	it { should validate_presence_of :lesson }
	it { should validate_presence_of :kind }

	let(:experience) { FactoryGirl.create(:experience) }

	context '#create' do 
		it 'requires name, description, start_date, lesson to be created' do
			expect(Experience.create(
				name:        Faker::Company.name,
				description: Faker::Lorem.sentence,
				start_date:  2.days.ago,
				end_date:    4.days.ago,
				lesson:      Faker::Lorem.sentence)
			).to be_a Experience
		end

	end

	context 'it has tags' do
		it 'should have tags seperated by spaces' do
			experience.tags.split.should have(2).items
		end
	end

end