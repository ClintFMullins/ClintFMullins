require 'spec_helper'
require 'factories'

describe Accomplishment do 

	it { should validate_presence_of :name }
	it { should validate_presence_of :description }
	it { should validate_presence_of :start_date }
	it { should validate_presence_of :lesson }
	it { should validate_presence_of :type }

	let(:accomplishment) { FactoryGirl.create(:accomplishment) }

	context '#create' do 
		it 'requires name, description, start_date, lesson to be created' do
			expect(Accomplishment.create(
				name:        Faker::Company.name,
				description: Faker::Lorem.sentence,
				start_date:  2.days.ago,
				end_date:    4.days.ago,
				lesson:      Faker::Lorem.sentence)
			).to be_a Accomplishment
		end

		it 'should have type of Accomplishment' do 
			accomplishment.type.should eq 'Accomplishment'
		end
	end

end