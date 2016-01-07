## Animal is-a object (yes, sort of confusing) look at the extra credit
class Animal

end

## ??Dog is-a Animal 
class Dog < Animal

  def initialize(name)
    ## ??Dog has-a name
    @name = name
  end

end

## ??Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## ??Cat has-a name
    @name = name
  end

end

## ??Person is-a object
class Person

  attr_accessor :pet

  def initialize(name)
    ## ??Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

end
## ??Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic? Employee has-a name
    super(name)
    ## ??Employee has-a salary
    @salary = salary
  end

end

## ??Fish is-a object
class Fish

end

## ??Salmon is-a Fish
class Salmon < Fish

end

## ??Halibut is-a Fish
class Halibut < Fish

end

## rover is-a Dog
rover = Dog.new("Rover")

## ?? satan is-a Cat
satan = Cat.new("Satan")

## ?? mary is-a Person
mary = Person.new("Mary")

## ?? mary has-a pet satan is-a Cat
mary.pet = satan

## ?? frank  is-a Employee has-a salary 120000
frank = Employee.new("Frank", 120000)

## ?? frank has-a pet rover is-a Dog
frank.pet = rover

## ?? flipprt is-a fish
flipper = Fish.new

## ?? crouse is-a Salmon
crouse = Salmon.new

## ?? harry is-a Halibut
harry = Halibut.new