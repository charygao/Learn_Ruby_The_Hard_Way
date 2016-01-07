#	puts true and true												#	TRUE
#	puts false and true												#	FALSE
#	puts 1 == 1 and 2 == 1											#	TRUE
#	puts "test" == "test"											#	TRUE
#	puts 1 == 1 or 2 != 1											#	TRUE
#	puts true and 1 == 1											#	TRUE
#	puts false and 0 != 0											#	FALSE
#	puts true or 1 == 1												#	TRUE
#	puts "test" == "testing"										#	FALSE
#	puts 1 != 0 and 2 == 1											#	TRUE
#	puts "test" != "testing"										#	TRUE
#	puts "test" == 1												#	FALSE
#	puts not(true and false)										#	TRUE
#	puts not(1 == 1 and 0 != 1)										#	FALSE
#	puts not(10 == 1 or 1000 == 1000)								#	FALSE
#	puts not(1 != 10 or 3 == 4)										#	FALSE
#	puts not("testing" == "testing" and "Zed" == "Cool Guy")		#	TRUE
#	puts 1 == 1 and not("testing" == 1 or 1 == 0)					#	TRUE
#	puts "chunky" == "bacon" and not(3 == 4 or 3 == 3)				#	FALSE
#	puts 3 == 3 and not("testing" == "testing" or "Ruby" == "Fun")	#	TRUE


people = 20
cats = 30
dogs = 15

if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end

dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end

if people == dogs
  puts "People are dogs."
end

puts "=====================" 

people = 30
cars = 40
buses = 15

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if buses > cars
  puts "That's too many buses."
elsif buses < cars
  puts "Maybe we could take the buses."
else
  puts "We still can't decide."
end

if people > buses
  puts "Alright, let's just take the buses."
else
  puts "Fine, let's stay home then."
end