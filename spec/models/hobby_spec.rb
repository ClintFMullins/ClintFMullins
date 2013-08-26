require 'spec_helper'
require 'factories'

describe Hobby do 

	it { should validate_presence_of :name }
	it { should validate_presence_of :description }
	it { should validate_presence_of :start_date }
	it { should validate_presence_of :lesson }
	it { should validate_presence_of :type }

	let(:hobby) { FactoryGirl.create(:hobby) }

	context '#create' do 
		it 'should accept all necessary attributes upon creation' do
			expect(hobby).to be_a Hobby
		end

		it 'should have type of Hobby' do 
			hobby.type.should eq 'Hobby'
		end
	end

end