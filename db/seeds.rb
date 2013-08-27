require 'faker'

def time_rand(from = 0.0, to = Time.now)
  Time.at(from + rand * (to.to_f - from.to_f))
end

10.times do 
	Skill.create( name: 			 Faker::Company.name,
								description: Faker::Lorem.sentence,
								start_date:  time_rand,
								end_date:    time_rand,
								lesson:      Faker::Lorem.sentence )
end

10.times do 
	Employment.create( name: 			 Faker::Company.name,
										 description: Faker::Lorem.sentence,
										 start_date:  time_rand,
										 end_date:    time_rand,
										 lesson:      Faker::Lorem.sentence )
end

10.times do 
	Hobby.create( name: 			 Faker::Company.name,
								description: Faker::Lorem.sentence,
								start_date:  time_rand,
								end_date:    time_rand,
								lesson:      Faker::Lorem.sentence )
end

10.times do 
	Accomplishment.create( 
		name: 			 Faker::Company.name,
		description: Faker::Lorem.sentence,
		start_date:  time_rand,
		end_date:    time_rand,
		lesson:      Faker::Lorem.sentence 
	)
end