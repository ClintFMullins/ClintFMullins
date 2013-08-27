class ExperienceController < ApplicationController


	def index 
		@experiences = Experience.find(:all, order: :start_date)
	end

end