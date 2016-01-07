module Ex25
  def self.break_words(stuff)
    # This function will break up words for us.
    words = stuff.split(' ')
    words
  end

  def self.sort_words(words)
    # Sorts the words.
    words.sort()
  end

  def self.print_first_word(words)
    # Prints the first word and shifts the others down by one.
    word = words.shift()
=begin
	args = [ "-m", "-q", "filename" ]
	args.shift     #=> "-m"
	args           #=> ["-q", "filename"]

	args = [ "-m", "-q", "filename" ]
	args.shift(2)  #=> ["-m", "-q"]
	args           #=> ["filename"]
=end
    puts word
  end

  def self.print_last_word(words)
    # Prints the last word after popping it off the end.
	# Removes the last element from self and returns it, or nil if the array is empty.
    word = words.pop()
=begin 
	a = [ "a", "b", "c", "d" ]
	a.pop     #=> "d"
	a.pop(2)  #=> ["b", "c"]
	a         #=> ["a"]
=end
    puts word
  end

  def self.sort_sentence(sentence)
    # Takes in a full sentence and returns the sorted words.
    words = break_words(sentence)
    sort_words(words)
  end

  def self.print_first_and_last(sentence)
    # Prints the first and last words of the sentence.
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    # Sorts the words then prints the first and last one.
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end
end

stuff = <<AStuffWords
This function will break up words for us.
我们将做一些 关于 函数和变量 的练习，以确认 你 真正掌握了 这些知识。
AStuffWords

words = Ex25.break_words("A B C the G F R S Sorts words. H")

sentence=<<ASentence
All good things come to those who wait.

ASentence
puts stuff
puts "=========break_words============="
puts Ex25.break_words(stuff)
puts "=========sort_words============="
puts Ex25.sort_words(words)
puts "=========print word============="
puts words
puts "=========print_first_word============="
puts Ex25.print_first_word(words)
puts "=========print_last_word============="
puts Ex25.print_last_word(words)
puts "=========print word============="
puts words
puts "=========sort_sentence============="
puts Ex25.sort_sentence(sentence)
puts "=========print_first_and_last============="
puts Ex25.print_first_and_last(sentence)
puts "=========print_first_and_last_sorted============="
puts Ex25.print_first_and_last_sorted(sentence)

=begin 源代码
module Ex25
  def self.break_words(stuff)
    # This function will break up words for us.
    words = stuff.split(' ')
    words
  end

  def self.sort_words(words)
    # Sorts the words.
    words.sort()
  end

  def self.print_first_word(words)
    # Prints the first word and shifts the others down by one.
    word = words.shift()
    puts word
  end

  def self.print_last_word(words)
    # Prints the last word after popping it off the end.
    word = words.pop()
    puts word
  end

  def self.sort_sentence(sentence)
    # Takes in a full sentence and returns the sorted words.
    words = break_words(sentence)
    sort_words(words)
  end

  def self.print_first_and_last(sentence)
    # Prints the first and last words of the sentence.
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    # Sorts the words then prints the first and last one.
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end
end



$ irb
irb(main):001:0> require './ex25'
=> true
irb(main):002:0> sentence = "All good things come to those who wait."
=> "All good things come to those who wait."
irb(main):003:0> words = Ex25.break_words(sentence)
=> ["All", "good", "things", "come", "to", "those", "who", "wait."]
irb(main):004:0> sorted_words = Ex25.sort_words(words)
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
irb(main):005:0> Ex25.print_first_word(words)
All
=> nil
irb(main):006:0> Ex25.print_last_word(words)
wait.
=> nil
irb(main):007:0> Ex25.wrods
NoMethodError: undefined method `wrods' for Ex25:Module
        from (irb):6
irb(main):008:0> words
=> ["good", "things", "come", "to", "those", "who"]
irb(main):009:0> Ex25.print_first_word(sorted_words)
All
=> nil
irb(main):010:0> Ex25.print_last_word(sorted_words)
who
=> nil
irb(main):011:0> sorted_words
=> ["come", "good", "things", "those", "to", "wait."]
irb(main):012:0> Ex25.sort_sentence(sentence)
=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
irb(main):013:0> Ex25.print_first_and_last(sentence)
All
wait.
=> nil
irb(main):014:0> Ex25.print_first_and_last_sorted(sentence)
All
who
=> nil
irb(main):015:0> ^D
$


require './ex25'=> true
sentence = "All good things come to those who wait."=> "All good things come to those who wait."
words = Ex25.break_words(sentence)=> ["All", "good", "things", "come", "to", "those", "who", "wait."]
sorted_words = Ex25.sort_words(words)=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
Ex25.print_first_word(words)=> All
Ex25.print_last_word(words)=>wait.
Ex25.wrods=>NoMethodError: undefined method `wrods' for Ex25:Module from (irb):6
words=>["good", "things", "come", "to", "those", "who"]
Ex25.print_first_word(sorted_words)=>All
Ex25.print_last_word(sorted_words)=>who
sorted_words=>["come", "good", "things", "those", "to", "wait."]
Ex25.sort_sentence(sentence)=> ["All", "come", "good", "things", "those", "to", "wait.", "who"]
Ex25.print_first_and_last(sentence)=>
All
wait.
Ex25.print_first_and_last_sorted(sentence)
All
who
=end