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
		it 'should accept all necessary attributes upon creation' do
			expect(skill).to be_a Skill
		end

		it 'should have type of Skill' do 
			skill.type.should eq 'Skill'
		end
	end

end