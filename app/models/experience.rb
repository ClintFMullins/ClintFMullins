class Experience < ActiveRecord::Base
	attr_accessible :name, :description, :start_date, :end_date, :lesson, :type, :tags
	validates_presence_of :name, :description, :start_date, :lesson, :type
end