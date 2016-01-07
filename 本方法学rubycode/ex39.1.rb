class TheThing
  attr_reader :number

  def initialize()
    @number = 0
	puts number.object_id
	puts :number.object_id
	puts @number.object_id
	puts number.class
	puts :number.class
	puts @number.class
  end
  def add_me_up(more)
    @number += more
	return @number
  end
end
a = TheThing.new

#puts TheThing.methods()
#puts 1.methods()
