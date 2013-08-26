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
		it 'should accept all necessary attributes upon creation' do
			expect(accomplishment).to be_a Accomplishment
		end

		it 'should have type of Accomplishment' do 
			accomplishment.type.should eq 'Accomplishment'
		end
	end

end