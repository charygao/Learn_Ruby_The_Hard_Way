the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through an array
for number in the_count
  puts "This is count #{number}"
end

# same as above, but using a block instead
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed arrays too
for i in change
  puts "I got #{i}"
end

# we can also build arrays, first start with an empty one
elements = []

# then use a range object to do 0 to 5 counts
for i in (0..5)
  puts "Adding #{i} to the list."
  # push is a function that arrays understand
  elements.push(i)
end


# now we can puts them out too
for i in elements
  puts "Element was: #{i}"
end

elementss = (0..5)
for i in elementss
  puts "Elementss was: #{i}"
end

=begin
A Range represents an interval—a set of values with a beginning and an end. Ranges may be constructed using the s..e and s...e literals, or with ::new. Ranges constructed using .. run from the beginning to the end inclusively. Those created using ... exclude the end value. When used as an iterator, ranges return each value in the sequence.

(-1..-5).to_a      #=> []
(-5..-1).to_a      #=> [-5, -4, -3, -2, -1]
('a'..'e').to_a    #=> ["a", "b", "c", "d", "e"]
('a'...'e').to_a   #=> ["a", "b", "c", "d"]

=end