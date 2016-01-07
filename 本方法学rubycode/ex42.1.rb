stuff = ['Test', 'This', 'Out']
puts "type of stuff is #{stuff.class}"
stuffs = stuff.join(' ')
puts stuffs 
puts "type of stuffs is #{stuffs.class}"

class TheThing
  attr_reader :number

  def initialize()
    @number = 0
  end

  def some_function()
    puts "I got called."
  end

  def add_me_up(more)
    @number += more
    return @number
  end
end

# two different things
a = TheThing.new
b = TheThing.new

a.some_function()
b.some_function()

puts "==a.add_me_up(20)==", a.add_me_up(20)
puts a.add_me_up(20)
puts "==b.add_me_up(30)==", b.add_me_up(30)
puts b.add_me_up(30)

puts "==last a.number==", a.number
puts "==last b.number==", b.number
