require 'faker'

def time_rand(from = 0.0, to = Time.now)
  Time.at(from + rand * (to.to_f - from.to_f))
end

def main_tag
	['Skill','Project','Hobby','Work'].sample
end

def tags
	['java','python','ruby','AI','Dev Bootcamp'].sample(2)
end

40.times do 
	Experience.create( 
		name: 			 Faker::Company.name,
		description: Faker::Lorem.sentence,
		start_date:  time_rand,
		end_date:    time_rand,
		lesson:      Faker::Lorem.sentence, 
		kind:    		 main_tag,
		tags:        tags
	)
end
