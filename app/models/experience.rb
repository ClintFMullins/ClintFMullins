class Experience < ActiveRecord::Base
	validates_presence_of :name, :description, :start_date, :lesson, :type
end