require 'spec_helper'
require 'factories'

describe Employment do 

	it { should validate_presence_of :name }
	it { should validate_presence_of :description }
	it { should validate_presence_of :start_date }
	it { should validate_presence_of :lesson }
	it { should validate_presence_of :type }

	let(:employment) { FactoryGirl.create(:employment) }

	context '#create' do 
		it 'requires name, description, start_date, lesson to be created' do
			expect(Employment.create(
				name:        Faker::Company.name,
				description: Faker::Lorem.sentence,
				start_date:  2.days.ago,
				end_date:    4.days.ago,
				lesson:      Faker::Lorem.sentence)
			).to be_a Employment
		end

		it 'should have type of Employment' do 
			employment.type.should eq 'Employment'
		end
	end

end