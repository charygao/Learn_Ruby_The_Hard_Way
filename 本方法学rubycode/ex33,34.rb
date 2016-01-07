i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i = i + 1
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
  puts num
end

animals = ['bear', 'tiger', 'penguin', 'zebra']
animalss = ['bear', 'python', 'peacock', 'kangaroo', 'whale', 'platypus']
bear = animals[0]

puts "The animal at 1 #{animalss[1]}. The 3rd animal #{animalss[2]}. The 1st animal #{animalss[0]}. \
	The animal at 3 #{animalss[3]}. The 5th animal #{animalss[4]}. The animal at 2 #{animalss[2]}. \
	The 6th animal #{animalss[5]}. The animal at 4. #{animalss[4]}"

puts "animals.first 和 animals.last: #{animals.first}+#{animals.last}"