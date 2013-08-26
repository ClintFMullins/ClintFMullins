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
		it 'should accept all necessary attributes upon creation' do
			expect(employment).to be_a Employment
		end

		it 'should have type of Employment' do 
			employment.type.should eq 'Employment'
		end
	end

end