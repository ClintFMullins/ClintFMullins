require 'spec_helper'
require 'factories'

describe Skill do 

	it { should validate_presence_of :name }
	it { should validate_presence_of :description }
	it { should validate_presence_of :start_date }
	it { should validate_presence_of :lesson }
	it { should validate_presence_of :type }

	let(:skill) { FactoryGirl.create(:skill) }

	context '#create' do 
		it 'requires name, description, start_date, lesson to be created' do
			expect(Skill.create(
				name:        Faker::Company.name,
				description: Faker::Lorem.sentence,
				start_date:  2.days.ago,
				end_date:    4.days.ago,
				lesson:      Faker::Lorem.sentence)
			).to be_a Skill
		end

		it 'should have type of Skill' do 
			skill.type.should eq 'Skill'
		end
	end

end