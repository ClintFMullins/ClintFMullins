class Hobby < Experience
	attr_accessible :name, :description, :start_date, :end_date, :lesson
	validates_presence_of :name, :description, :start_date, :lesson, :type
end