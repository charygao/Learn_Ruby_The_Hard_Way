name1 = "Joe"
name2 = "Mary"
puts "Hello %s, where is %s?" % [name1, name2]

name1 = "Joes"
name2 = "Marys"
puts "Hello #{name1}, where is #{name2}?"
#==============================================
x = "There are #{10} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

puts "I said: #{x}."
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

puts w + e


#===============
puts "Mary had a little lamb."
puts "Its fleece was white as %s." % 'snow'
puts "And everywhere that Mary went."
puts "." * 10  # what'd that do?

end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# notice how we are using print instead of puts here. change it to puts
# and see what happens.
print end1 + end2 + end3 + end4 + end5 + end6
print end7 + end8 + end9 + end10 + end11 + end12

# this just is polite use of the terminal, try removing it
puts