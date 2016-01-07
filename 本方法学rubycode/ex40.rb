cities = {'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

def find_city(mapE, state)
  if mapE.include?(state)
    return mapE[state]
  else
    return "Not found."
  end
end

# ok pay attention!
cities[:findS] = method(:find_city)

while true
  print "State? (ENTER to quit) "
  state = gets.chomp

  break if state.empty?()

  # this line is the most important ever! study!
  puts cities[:findS].call(cities, state)
  puts cities
  puts "\n"
  cities.each{|y| print y," ..=\n"}
end

state = gets.chomp
citiesA = {}
citiesA[:findSa] = method(:find_city)
  puts citiesA[:findSa].call(cities, state)

